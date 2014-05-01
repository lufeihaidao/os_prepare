" no vi-compatible
set nocompatible

" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

" required for vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Bundles from GitHub repos:
" Better file browser
Bundle 'scrooloose/nerdtree'
" Code commenter
" Bundle 'scrooloose/nerdcommenter'
Bundle 'tomtom/tcomment_vim'
" Zen coding -> emmet
Bundle 'mattn/emmet-vim'
" Powerline or Airline
Bundle 'Lokaltog/vim-powerline'
" Bundle 'bling/vim-airline'
" Powerline can display git info with this plugin
Bundle 'tpope/vim-fugitive'
" term color
Bundle 'lufeihaidao/vim-term-color'
" ag 项目内搜索，需要the_silver_searcher
Bundle 'rking/ag.vim'
" ctrl shift f find with ag
Bundle 'dyng/ctrlsf.vim'
" 静态语法检查
Bundle 'scrooloose/syntastic'
" 使用 %快速跳至匹配的括号标签等
Bundle 'vim-scripts/matchit.zip'
" 给查找加索引
Bundle 'vim-scripts/IndexedSearch'
" 显示 git diff 信息，在左侧
Bundle 'airblade/vim-gitgutter'
" 多光标选择，类似 subl，很有用
Bundle 'terryma/vim-multiple-cursors'
" js 语法
Bundle 'jelera/vim-javascript-syntax'
" 光标后跳转
Bundle 'Lokaltog/vim-easymotion'
" 代码提示与补全
Bundle 'Valloric/YouCompleteMe'
" ctrlp 文件查找
Bundle 'kien/ctrlp.vim'
" Extension to ctrlp 列出vim命令
Bundle 'fisadev/vim-ctrlp-cmdpalette'
" 更改包裹的字符串，看起来很好用，用的少
Bundle 'tpope/vim-surround'
" 自动闭合
Bundle 'Raimondi/delimitMate'
" snippets
Bundle 'sirver/ultisnips'
Bundle 'honza/vim-snippets'
" tag 查看
Bundle 'majutsushi/tagbar'
" scrool
Bundle 'yonchu/accelerated-smooth-scroll'


" wombat color scheme
Bundle 'wombat'
" minibuffer
" Bundle 'minibufexpl.vim'

" allow plugins by file type
filetype plugin on
filetype indent on
syntax on

" tabs and spaces handling
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" always show status bar
set ls=2
" incremental search
set incsearch
" highlighted search results
set hlsearch
map nh :nohl<CR>
" line numbers
set nu

" tab
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm<CR>
map tt :tabnew<CR>
map tc :tabclose<CR>
" map <C-S-Right> :tabn<CR>
" imap <C-S-Right> <ESC>:tabn<CR>
" map <C-S-Left> :tabp<CR>
" imap <C-S-Left> <ESC>:tabp<CR>

" NERDTree (better file browser) toggle
map ntt :NERDTreeToggle<CR>
" Ignore files on NERDTree
let NERDTreeIgnore = ['\.pyc$', '\.pyo$', '\.swp$']

" use 256 colors when possible
if &term =~? 'mlterm\|xterm\|xterm-256\|screen-256'
	let &t_Co = 256
    " color
    colorscheme wombat_term
else
    " color
    colorscheme delek
endif

" colors for gvim
if has('gui_running')
    colorscheme wombat
endif

" to use fancy symbols for powerline, uncomment the following line and use a
" patched font (more info on the README.rst)
let g:Powerline_symbols = 'fancy'
set encoding=utf-8

" ctrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nmap ,b :CtrlPBuffer<CR>
nmap ,f :CtrlPLine<CR>
nmap ,m :CtrlPMRUFiles<CR>
nmap ,c :CtrlPCmdPalette<CR>
" to be able to call CtrlP with default search text
function! CtrlPWithSearchText(search_text, ctrlp_command_end)
 execute ':CtrlP' . a:ctrlp_command_end
 call feedkeys(a:search_text)
endfunction
" CtrlP with default text
nmap ,wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>
nmap ,we :call CtrlPWithSearchText(expand('<cword>'), '')<CR>
nmap ,pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>
nmap ,wm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')<CR>
nmap ,wc :call CtrlPWithSearchText(expand('<cword>'), 'CmdPalette')<CR>
" Don't change working directory
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|swp|pyc|pyo)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" snippets for ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" local debug
" let g:debuggerMiniBufExpl = 1
