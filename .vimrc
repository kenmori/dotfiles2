set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set number
syntax on



set t_Co=256
set title
set fileencoding=utf-8
set encoding=utf-8
set incsearch
set ruler
set ambiwidth=double
set tabstop=2
set shiftwidth=2
set smartindent
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
set showmatch
set autoindent
set expandtab
set list
set backupdir=~/vimfiles/backup
set confirm "保存されていないファイルがある場合確認"
set autoread "外部でファイルに変更が競れた場合は読み直す"
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set nrformats-=octal
set hidden
set history=50
set infercase
set virtualedit=block
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set wildmenu
set noerrorbells
set novisualbell
set ignorecase
set smartcase
set hlsearch
set wrapscan
set gdefault
set nocompatible
set guicursor=a:blinkon0


"ctrlp.vim setting
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_working_path_mode = 'ra'
" キャッシュディレクトリ
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
" キャッシュを終了時に削除しない
let g:ctrlp_clear_cache_on_exit = 0
" 遅延再描画
let g:ctrlp_lazy_update = 1
" ルートパスと認識させるためのファイル
let g:ctrlp_root_markers = ['Gemfile', 'pom.xml', 'build.xml', 'package.json']
" CtrlPのウィンドウ最大高さ
let g:ctrlp_max_height = 20
" 無視するディレクトリ
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|dist|build)$',
  \ 'file': '\v\.(exe|so|dll|png|jpg|ai|swp|swo|DS_Store|ico)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


"grep時の:cnextのshortcut
nnoremap [q :cprevious<CR>   "前へ
nnoremap ]q :cnext<CR>       "次へ
nnoremap [Q :<C-u>cfirst<CR> "最初へ
nnoremap ]Q :<C-u>clast<CR>  "最後へ

"検索時にデフォルトでcw(qickfix-windowを開く)する
autocmd QuickFixCmdPost *grep* cwindow


call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'Shougo/neocomplcache'
Plugin 'Shougo/unite.vim'
Plugin 'ZenCoding.vim'
Plugin 'tomasr/molokai'
Plugin 'Townk/vim-autoclose'
Plugin 'pangloss/vim-javascript'
Plugin 'open-browser.vim'
Plugin 'mattn/emmet-vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'j5shi/vim-quick-preview'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'othree/yajs.vim'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'othree/es.next.syntax.vim'
Plugin 'mileszs/ack.vim'


call vundle#end()
filetype plugin indent on
filetype plugin on
filetype on


let g:molokai_original = 1
let g:_plugin_jsdoc = 1


let g:ackprg = 'ag --nogroup --nocolor --column'


" lightline setting
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif



"auto reload .vimrc
 augroup source-vimrc
 	autocmd!
     	autocmd bufwritepost *vimrc source $myvimrc | set foldmethod=marker
       	autocmd bufwritepost *gvimrc if has('gui_running') source $mygvimrc
       	augroup end




"カーソル下のURLをブラウザで開く
nmap <Leader>o <Plug>(openbrowser-open)
vmap <Leader>o <Plug>(openbrowser-open)
"ググる
nnoremap <L:ader>g :<C-u>OpenBrownerSearch<Space><C-r><C-w><Enter>

"------------
"colorscheme
"------------
colorscheme molokai
highlight Normal ctermbg=none
set background=dark

imap <C-j> <esc>
imap [ []<left>
imap ( ()<left>
imap { {}<left>
imap < <><left>

nmap <Esc><Esc> :nohlsearch<CR><Esc>




