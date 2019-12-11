syntax enable
syntax on
"显示行号  取消nonu
set nu  
"自动缩进 auto indent 取消 noai
set ai
set tabstop=4

colorscheme desert

" Tlist"
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"1为关闭底部状态栏 2为开启"
set laststatus=2
"终端开启256色支持"
set t_Co=256

" 安装 NeoBundle 插件管理器"
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

"add Plugin"
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
"NeoBundle 'vim-airline/vim-airline.git'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


"airline options
let g:airline_powerline_fonts=1
"let g:airline_theme='murmur'
"let g:airline_theme='moloai'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
" 顶行 tab 文件名格式  default jsformatter unique_tail unique_tail_improved "
let g:airline#extensions#tabline#formatter = 'unique_tail' 

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty= '⚡'

"Smarter tab line"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

nmap <tab> :bn<cr>

