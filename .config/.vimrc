"set rtp+=~/.config/.vim/bundle/Vundle.vim
set rtp+=~/.vim,~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
if expand('%:t') != 'config.h'
    Plugin 'Valloric/YouCompleteMe'
	endif
Plugin 'preservim/nerdtree'
Plugin 'jreybert/vimagit'
Plugin 'junegunn/goyo.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'lervag/vimtex'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'airblade/vim-gitgutter'
call vundle#end()

map <leader>v :w! \| !pdflatex "<c-r>%"<CR>

"Nerdtree 
	let NERDTreeShowHidden=1
	map <leader> f :NERDTreeToggle<CR>

"For vim-latex-live-preview
	let g:livepreview_previewer = 'zathura'

"Make file
	autocmd FileType make setlocal noexpandtab

"You complete me
    let g:ycm_global_ycm_extra_conf = '$HOME/.vim/ycm_extra_conf/ycm_extra_conf.py'

"Really basic
	set hlsearch
	syntax on
	set number relativenumber
	set tabstop=4
	set shiftwidth=4
	"set expandtab
    set autoindent
    set cindent
	
"Spell checking
	map <leader>e :setlocal spell! spelllang=en_us<CR>
"	map <leader>l :setlocal spell! spelllang=lt<CR>

"Compiling and running c++ programs (school stuff)
    map <leader>c :w! \| !g++ "<c-r>%"<CR> :!./a.out<CR>

"Snippets
"LaTeX
"Chem
autocmd FileType tex inoremap ,state \scriptsize{()}<ESC>T(i
autocmd FileType tex inoremap ,ce \ce{}<ESC>T{i 
autocmd FileType tex inoremap ,ox \ox{}{}<ESC>T{i 
"General
autocmd FileType tex inoremap ,cnt \begin{center}\end{center}<ESC>i
autocmd FileType tex inoremap ,bf \textbf{}<ESC>T{i 
