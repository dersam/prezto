# symlink configs to home

#git clone --recursive https://github.com/dersam/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

export DOTFILES_HOME=~/.zprezto

ln -vsfn $DOTFILES_HOME/configs/.gitconfig ~/
ln -vsfn $DOTFILES_HOME/configs/.tmux.conf ~/
ln -vsfn $DOTFILES_HOME/tmuxinator ~/.tmuxinator
ln -vsfn $DOTFILES_HOME/configs/dircolors ~/
ln -vsfn $DOTFILES_HOME/configs/.vimrc ~/
ln -vsfn $DOTFILES_HOME/configs/.gitignore ~/

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done