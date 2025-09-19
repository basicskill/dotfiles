#!/bin/bash

# Predefined list of file names
files=("zshrc" "shell_aliases" "config/ranger")

# Loop through each file name
for file in "${files[@]}"; do
    # Check if source file exists
    if [ ! -f "$file" ]; then
        echo "Warning: Source file '$file' does not exist, skipping..."
        continue
    fi
    
    # Check if destination already exists
    if [ -e "$HOME/.$file" ]; then
	    rm "$HOME/.$file"
    fi
    
    # Create symbolic link
    ln -s "$(pwd)/$file" "$HOME/.$file"
    
    # Verify the link was created successfully
    if [ $? -eq 0 ]; then
	echo "✓ Created symlink: ~/.$file -> $(pwd)/$file"
    else
        echo "✗ Failed to create symlink for $file"
    fi
done

echo "Symbolic link creation completed!"

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
