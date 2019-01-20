echo "reading .vimrc"

set shell=/bin/bash
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
syntax on

set swapfile
"$HOME/.vimrc
set directory=$HOME/.vim/swapfiles

"保存時にsudo権限で無理やり保存 :w!!
cnoremap w!! w !sudo tee > /dev/null %<CR> :e!<CR>

set t_Co=256
" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard
  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

set title
set fileencoding=utf-8
set encoding=utf-8
set incsearch
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
set infercase
set virtualedit=block
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

"fullpathをputする
let @" = expand("%:p")

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

"typescrpt-vim"
let g:typescript_indent_disable = 1

"grep時の:cnextのshortcut
nnoremap [q :cprevious<CR>   "前へ
nnoremap ]q :cnext<CR>       "次へ
nnoremap [Q :<C-u>cfirst<CR> "最初へ
nnoremap ]Q :<C-u>clast<CR>  "最後へ

"検索時にデフォルトでcw(qickfix-windowを開く)する
autocmd QuickFixCmdPost *grep* cwindow



"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/kenjimorita/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/kenjimorita/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

NeoBundle 'VundleVim/Vundle.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'git://git.wincent.com/command-t.git'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ZenCoding.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'open-browser.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'j5shi/vim-quick-preview'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'othree/yajs.vim'
NeoBundle 'maxmellon/vim-jsx-pretty'
NeoBundle 'othree/javascript-libraries-syntax.vim'
NeoBundle 'othree/es.next.syntax.vim'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'surround.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'glidenote/memolist.vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
"


call vundle#begin()

au BufRead,BufNewFile *.md set filetype=markdown
let g:previm_open_cmd = 'open -a Firefox'

Plugin 'nelstrom/vim-visual-star-search'

"--ctrlp setting"
" キャッシュディレクトリ
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
" キャッシュを終了時に削除しない
let g:ctrlp_clear_cache_on_exit = 0
" 遅延再描画
let g:ctrlp_lazy_update = 1
" ルートパスと認識させるためのファイル
let g:ctrlp_root_markers = ['Gemfile', 'pom.xml', 'build.xml']
" CtrlPのウィンドウ最大高さ
let g:ctrlp_max_height = 20
" 無視するディレクトリ
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


"window移動
"nnoremap ww <C-w>w
"nnoremap wj <C-w>j
"nnoremap wk <C-w>k
"nnoremap wl <C-w>l
"nnoremap wh <C-w>h

nnoremap <silent>bp :bprevious<CR>
nnoremap <silent>bn :bnext<CR>
nnoremap <silent>bf :bf<CR>
nnoremap <silent>bl :b#<CR>
nnoremap <silent>bm :bm<CR>
nnoremap <silent>bd :bdelete<CR>


"memolist
let g:memolist_path = 'path/to/dir'
nnoremap <Leader>mn  :MemoNew<CR>
nnoremap <Leader>ml  :MemoList<CR>
nnoremap <Leader>mg  :MemoGrep<CR>

"--nerdtree
nnoremap <silent><c-n> :NERDTreeToggle<CR>

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

" ファイル名を指定されてvimが立ち上がった場合nerdTreeは開かない
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

call NERDTreeHighlightFile('py',     'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('md',     'blue',    'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml',    'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('config', 'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('conf',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('json',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('html',   'yellow',  'none', 'yellow',  '#151515')
call NERDTreeHighlightFile('styl',   'cyan',    'none', 'cyan',    '#151515')
call NERDTreeHighlightFile('css',    'cyan',    'none', 'cyan',    '#151515')
call NERDTreeHighlightFile('rb',     'Red',     'none', 'red',     '#151515')
call NERDTreeHighlightFile('js',     'Red',     'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php',    'Magenta', 'none', '#ff00ff', '#151515')

"open bookmark when first run nerdTree
let g:NERDTreeShowBookmarks=1



"---ステータスライン
Plugin 'jistr/vim-nerdtree-tabs'
set showmode "現在のモードを表示"
set ruler "ステータスラインの右側にカーソルの現在位置を表示"
set showcmd "打ったコマンドをステータスラインの下に表示"

"---末尾の全角と半角の空白文字を赤くハイライト
Plugin 'bronson/vim-trailing-whitespace'
"FixWhitespace


"--カーソル
set whichwrap=b,s,h,l,<,>,[,],~ " カーソルの左右移動で行末から次の行の行頭への移動が可能になる
set number
set cursorline " カーソルラインをハイライト 重くなる原因のようなので一旦

" 行が折り返し表示されていた場合、行単位ではなく表示行単位でカーソルを移動する
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

"カッコタグジャンプ
set showmatch " 括弧の対応関係を一瞬表示する
source $VIMRUNTIME/macros/matchit.vim " Vimの「%」を拡張する

"コマンド補完
set wildmenu
set history=5000 "保存するコマンド数"

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
colorscheme jellybeans
highlight Normal ctermbg=none
set background=dark

imap <C-j> <esc>
imap [ []<left>
imap ( ()<left>
imap { {}<left>
imap < <><left>

nmap <Esc><Esc> :nohlsearch<CR><Esc>




call plug#begin('~/.vim/plugged')
"prettier
Plug 'sbdchd/neoformat'
augroup NeoformatAutoFormat
    autocmd!
    autocmd FileType javascript,javascript.jsx setlocal formatprg=prettier\
                                                            \--stdin\
                                                            \--print-width\ 80\
                                                            \--single-quote\
                                                            \--trailing-comma\ es5
    autocmd BufWritePre *.js,*.jsx Neoformat
augroup END
" Use formatprg when available
let g:neoformat_try_formatprg = 1


"---vim-flow
let g:syntastic_javascript_checkers = ['flow']
let g:syntastic_javascript_flow_exe = 'flow'


call plug#end()

