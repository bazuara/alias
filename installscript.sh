# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    installscript.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bazuara <bazuara@student.42madrid.>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/28 18:48:25 by bazuara           #+#    #+#              #
#    Updated: 2020/08/12 20:23:05 by bazuara          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/bash
cat ./sources/ascii.art
# press a key to continue
read -p ""
# install vim preferences
ln ./sources/.vimrc ~/.vimrc
# copy vim skelletons
cp -r ./sources/skeletons ~/.vim/skeletons
# instalar oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# instalar tema over10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
#alias a la carpeta de oh-my-zsh
ln ./sources/.alias.zsh ~/.oh-my-zsh/custom/alias.zsh
# general config oh-my-zsh
ln ./sources/.zshrc ~/.zshrc
# plugins ohmyzsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# intall vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# configura ignore global
ln ./sources/.gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
# configura git author
ln -s ./sources/.gitconfig ~/.gitconfig
# Instala las fuentes
cp ./sources/font/*.ttf ~/Library/Fonts
# Cambia el desplazamiento del raton a no natural
#defaults write ~/Library/Preferences/.GlobalPreferences.plist com.apple.swipescrolldirection -boolean NO
# instala preferencia de iTerm2
defaults delete com.googlecode.iterm2
rm ~/Library/Preferences/com.googlecode.iterm2.plist
ln ./sources/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
defaults read -app iTerm > /dev/null
# set wallpaper
#osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Users/bazuara/.custom/alias/sources/metropolis.png"'
echo "No te olvides de reiniciar el terminal para aplicar todos los cambios"
exit 0
