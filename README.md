(Crispy) Vimfiles
===============

Setup
-----
  
1. Clone Repo to ~/.vim
 * `git clone git@github.com:hzeus/vimfiles.git ~/.vim`
2. Symlink rc files from repo
  * `ln -s .vim/.vimrc .vimrc; ln -s .vim/.gvimrc .gvimrc`
3. Setup Vundle, the Bundler-like plugin manager for Vim
  * `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
4. Execute Vundle
  * `cd ~/.vim; vim +BundleInstall +qall`
