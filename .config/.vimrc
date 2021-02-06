"set rtp+=~/.config/.vim/bundle/Vundle.vim
set rtp+=~/.vim,~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jreybert/vimagit'
Plugin 'junegunn/goyo.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'preservim/nerdtree'
call vundle#end()

"You complete me
    let g:ycm_global_ycm_extra_conf = '$HOME/.vim/ycm_extra_conf/ycm_extra_conf.py'

"Really basic
	set hlsearch
	syntax on
	set number relativenumber
	set tabstop=4
	set shiftwidth=4
	set expandtab
    set autoindent
    set cindent
	
"Spell checking
	map <leader>e :setlocal spell! spelllang=en_us<CR>
	map <leader>l :setlocal spell! spelllang=lt<CR>

"Compiling and running c++ programs (school stuff)
    map <leader>c :w! \| !g++ "<c-r>%"<CR> :!./a.out<CR>
