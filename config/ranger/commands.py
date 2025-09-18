from ranger.api.commands import Command

class gw(Command):
    """
    :gw
    Ulazi u direktorijum $working
    """

    def execute(self):
        import os
        A = os.environ["working"]
        self.fm.notify(A)
        self.fm.cd(A)

class mp3(Command):
    """
    :mp3 <cover file>
    """

    def execute(self):
        from os import listdir

        for fname in listdir():
            if fname[-4:] == '.jpg':
                cover_path = fname
        if cover_path:
            cover = open(cover_path, 'rb').read()

        genre = ''
        for genre_part in self.args[1:]:
            genre += genre_part + ' '

        for f in self.fm.thistab.get_selection():
            self.tag_mp3(f.realpath, cover, genre)
        self.fm.notify("Uspesno!")

    def tag_mp3(self, abs_path, cover_art, genre):
        import eyed3
        file_name = abs_path.split('/')[-1]
        album_name = abs_path.split('/')[-2]

        num, artist, song = file_name[:-4].split('|') # Moguca greska
        f = eyed3.load(file_name)
        f.initTag()

        f.tag.artist = artist
        f.tag.title = song
        f.tag.album = album_name
        f.tag.track_num = (int(num), None)
        if genre != '':
            f.tag.genre = genre

        if cover_art:
            f.tag.images.remove('')
            for i in f.tag.images:
                f.tag.images.remove(i.desciption)
            f.tag.images.set(0, cover_art, 'image/jpeg', 'cover123')

        f.tag.save()
