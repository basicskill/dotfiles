config.load_autoconfig()

c.downloads.position = 'bottom'
c.content.cookies.accept = 'all'
c.colors.webpage.bg = 'black'
#c.fonts.monospace = "DejaVu Sans Mono"
#c.fonts.monospace = "Ubuntu Mono"


nTab='file:///home/mladen/.config/startpage/startpage.html'
c.aliases = {
        'w': 'session-save', 'q': 'quit', 'wq': 'quit --save',
        'load': 'session-load',
}
c.auto_save.session = True
c.auto_save.interval = 15000

c.backend = 'webengine'

c.tabs.wrap = True
c.tabs.select_on_remove = 'prev'

c.url.default_page = '~/.config/startpage/startpage.html'

c.url.searchengines = {
        'DEFAULT' :    'https://www.google.com/search?q={}',
        'google'  :    'https://www.google.com/search?q={}',
        'ddg'     :    'https://duckduckgo.com/?q={}',
        'gh'      :    'https://github.com/search?q={}',
        'yt'      :    'https://youtube.com/results?search_query={}',
        'aw'      :    'https://wiki.archlinux.org/index.php/{}',
        'tpb'     :    'https://thepiratebay.org/index.php?q=b{}',
        '4'       :    'https://boards.4chan.org/{}/',
        'tr'      :    'https://translate.google.com/#en/sr/{}',
        'sh'      :    'https://sci-hub.tw/{}',
        'r'       :    'https://www.reddit.com/r/{}',
        'wa'      :    'https://www.wolframalpha.com/input/?i={}',
        'w'       :    'http://wttr.in/{}',
        'tw'      :    'https://www.thinkwiki.org/wiki/{}',
        'ex'      :    'https://file.org/extension/{}',
        'kp'      :    'https://www.kupujemprodajem.com/search.php?action=list&submit%5Bkeywords%5D={}',
        'amazon'  :    'https://www.amazon.com/s?k={}',
}

c.url.start_pages = ['file:///home/mladen/.config/startpage/startpage.html']

#~~~~~~~~~~~~~~~~~~~~~ Tabovi ~~~~~~~~~~~~~~~~~~~~~#

c.tabs.mousewheel_switching = False
c.tabs.new_position.unrelated = 'next'
config.bind('D', 'tab-close')

#~~~~~~~~~~~~~~~~~~~~~ hintovi ~~~~~~~~~~~~~~~~~~~~~#

c.colors.hints.bg = 'black'
c.colors.hints.fg = 'rgb(211, 220, 40)'
c.colors.hints.match.fg = 'green'
c.colors.keyhint.bg = 'rgba(0, 0, 0, 80%)'
c.colors.keyhint.fg = '#FFFFFF'
c.colors.keyhint.suffix.fg = '#FFFF00'

#~~~~~~~~~~~~~~~~~~~~~ tabs colors ~~~~~~~~~~~~~~~~~~~~~#

c.colors.tabs.indicator.system = 'rgb'
c.colors.tabs.bar.bg = 'black'
c.colors.tabs.even.bg = '#595959'
c.colors.tabs.even.fg = 'white'
c.colors.tabs.odd.bg = '#373737'
c.colors.tabs.odd.fg = 'white'
c.colors.tabs.selected.even.bg = 'black'
c.colors.tabs.selected.even.fg = 'white'
c.colors.tabs.selected.odd.bg = 'black'
c.colors.tabs.selected.odd.fg = 'white'


#~~~~~~~~~~~~~~~~~~~~~ Download ~~~~~~~~~~~~~~~~~~~~~#

c.colors.tabs.indicator.error = '#ff0000'
c.colors.tabs.indicator.start = '#0000aa'
c.colors.tabs.indicator.stop = '#00aa00'


#~~~~~~~~~~~~~~~~~~~~~ Bajndovi ~~~~~~~~~~~~~~~~~~~~~#

c.bindings.commands = {

    'insert': {
        '<Ctrl-f>'        : 'fake-key <Right>',
        '<Ctrl-b>'        : 'fake-key <Left>',
        '<Ctrl-e>'        : 'fake-key <End>',
        '<Ctrl-n>'        : 'fake-key <Down>',
        '<Ctrl-p>'        : 'fake-key <Up>',
        '<Alt-v>'         : 'fake-key <PgUp>',
        '<Alt-f>'         : 'fake-key <Ctrl-Right>',
        '<Alt-b>'         : 'fake-key <Ctrl-Left>',
        '<Ctrl-d>'        : 'fake-key <Delete>',
        '<Alt-d>'         : 'fake-key <Ctrl-Delete>',
        '<Alt-Backspace>' : 'fake-key <Ctrl-Backspace>',
        '<Ctrl-y>'        : 'insert-text {primary}',
        '<Alt-u>'         : 'fake-key <Ctrl-a><Backspace>',
    },

    'normal': {

        # Enter Mode
        'i': 'enter-mode insert',
        'v': 'enter-mode caret',
        '<Ctrl-V>': 'enter-mode passthrough', # !! izbaci iz ctrl

        # Scroll
        'h': 'scroll left',
        'j': 'scroll down',
        'k': 'scroll up',
        'l': 'scroll right',

        # Search
        '/': 'set-cmd-text /',
        'n': 'search-next',
        'N': 'search-prev',

        # Kontrola tabova
        'o': 'set-cmd-text -s :open',
        'O': 'set-cmd-text -s :open -t',
        't': 'open -t',
        'T': 'tab-move -1 ;; open -t',
        'r': 'reload',
        'u': 'undo',
        'H': 'back',
        'J': 'tab-prev',
        'K': 'tab-next',
        'L': 'forward',
        '=': 'zoom',
        '+': 'zoom-in',
        '-': 'zoom-out',
        'co': 'tab-only',
        '<Ctrl-p>': 'tab-pin',

        '<Alt-1>': 'tab-focus 1',
        '<Alt-2>': 'tab-focus 2',
        '<Alt-3>': 'tab-focus 3',
        '<Alt-4>': 'tab-focus 4',
        '<Alt-5>': 'tab-focus 5',
        '<Alt-6>': 'tab-focus 6',
        '<Alt-7>': 'tab-focus 7',
        '<Alt-8>': 'tab-focus 8',
        '<Alt-9>': 'tab-focus 9',
        '<Alt-0>': 'tab-focus -1',

        '1': 'tab-focus 1',
        '2': 'tab-focus 2',
        '3': 'tab-focus 3',
        '4': 'tab-focus 4',
        '5': 'tab-focus 5',
        '6': 'tab-focus 6',
        '7': 'tab-focus 7',
        '8': 'tab-focus 8',
        '9': 'tab-focus 9',
        '0': 'tab-focus -1',
        
        # Hint
        'f' : 'hint',
        'F' : 'hint all tab',
        'I' : 'hint inputs',
        ';y': 'hint links yank',
        ';d': 'hint links download',
        ';h': 'hint all hover',
        ';i': 'hint inputs',
        ';I': 'hint images tab',
        ';Y': 'hint links yank-primary',
        ';R': 'hint --rapid links window',
        ';r': 'hint --rapid links',

        # Go
        'gj': 'tab-move -',
        'gk': 'tab-move +',
        'gB': 'set-cmd-text -s :bookmark-load -t', # !! staviti na normalno
        'gC': 'tab-clone',
        'gf': 'view-source', # !!
        'gg': 'scroll-to-perc 0',
        'go': 'set-cmd-text :open {url:pretty}', # ?

        # Open ( mozda prebaciti u listu/dict )
        'ge': 'open https://mail.google.com/mail/u/0/#inbox',
        'gm': 'open https://www.facebook.com/messages/t/',
        'gi': 'open https://www.integral-calculator.com/',
        'gd': 'open https://drive.google.com/drive/my-drive',
        'gw': 'open https://www.wolframalpha.com/',
        'gy': 'open https://www.youtube.com/',
        'gr': 'open https://www.reddit.com/',
        'gs': 'open https://student.etf.bg.ac.rs/pocetna.jsf',
        'gp': 'open https://photos.google.com/',
        'gc': 'open https://calendar.google.com/calendar/r',

        # yank
        'yD': 'yank domain -s',
        'yP': 'yank pretty-url -s',
        'yT': 'yank title -s',
        'yY': 'yank -s',
        'yd': 'yank domain',
        'yp': 'yank pretty-url',
        'yy': 'yank',
        'yt': 'yank title',

        # prozor
        'wP': 'open -w -- {primary}',
        'wf': 'hint all window',
        'wh': 'back -w',
        'wp': 'open -w -- {clipboard}',
        '<Ctrl-N>': 'open -w',
        '<Ctrl-Shift-N>': 'open -p',
        '<Ctrl-Return>': 'follow-selected -t',
        '<Ctrl-Shift-Return>': 'follow-selected -p',

        # Pamcenje Komandi
        '.': 'repeat-command',
        ':': 'set-cmd-text :',
        '@': 'run-macro',
        'q': 'record-macro',

        # Download
        'da': 'download-cancel',
        'dc': 'download-clear',

        # Bookmarks
        'Q' : 'quickmark-add',

        # Malc
        'm'         : 'tab-mute',
        '<Escape>'  : 'clear-keychain ;; search ;; fullscreen --leave',
        '<F11>'     : 'fullscreen',
        '<Shift-F5>': 'restart',
        '<Return>'  : 'follow-selected',
        '<Ctrl-o>'  : 'hint links spawn --detach mpv --force-window yes {hint-url}',
        '<Alt-Delete>'      : 'set colors.webpage.bg white',
        '<Ctrl-Delete>'     : 'set colors.webpage.bg black',
    }
}
config.unbind('d')

# TODO: auto proxy
# set config.proxy http://proxy.rcub.bg.ac.rs:8080
