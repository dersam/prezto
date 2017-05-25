# symlink configs to home

export DOTFILES_HOME=~/.zprezto

ln -vsfn $DOTFILES_HOME/configs/.gitconfig ~/
ln -vsfn $DOTFILES_HOME/configs/.tmux.conf ~/
ln -vsfn $DOTFILES_HOME/tmuxinator ~/.tmuxinator
ln -vsfn $DOTFILES_HOME/configs/dircolors ~/
ln -vsfn $DOTFILES_HOME/configs/.vimrc ~/
ln -vsfn $DOTFILES_HOME/configs/.gitignore ~/