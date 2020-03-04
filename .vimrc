colorscheme OceanicNext
"colorscheme Tomorrow-Night
"colorscheme hybrid_reverse
set background=dark
set mouse+=a

" for vim 8
if (has("termguicolors"))
  set termguicolors
endif

syntax on
syntax enable

filetype plugin indent on
set autoindent
set smartindent
set tabstop=2
set sts=2
set shiftwidth=2
set expandtab
set smarttab
set incsearch
set ignorecase
"set paste
set wildmenu
set cindent
set cul
"set ruler
set showcmd
set scrolloff=2
set laststatus=2
set number
set hls
set list lcs=tab:\|\
set modifiable
"set list listchars=tab:»\ ,trail:·,nbsp:⎵,precedes:<,extends:>

" **** Global Setting for Plugins ****
"let g:js_indent = '~/.vim/plugged/vim-web-indent/indent/javascript.vim'
let g:AutoPairsFlyMode = 1
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let g:indentLine_color_term = 239 "对齐线颜色
let g:airline_powerline_fonts = 1
let g:airline_solarized_bg='dark'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.dirty = ' ✗'
let g:limelight_paragraph_span = 1

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'tslint'],
\   'vue': ['eslint']
\}

" **** Pluggin list here ****
call plug#begin('~/.vim/plugged')
  Plug 'othree/html5.vim'
  Plug 'mhartington/oceanic-next'
  Plug 'othree/yajs.vim'
  "Plug 'herringtonDarkholme/yats.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'jelera/vim-javascript-syntax'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
  Plug 'suan/vim-instant-markdown'
  Plug 'mattn/emmet-vim'
  Plug 'Chiel92/vim-autoformat'
  Plug 'iamcco/markdown-preview.vim'
  Plug 'Yggdroot/indentLine'
  Plug 'hail2u/vim-css3-syntax'
  Plug 'moll/vim-node'
  Plug 'maksimr/vim-jsbeautify'
  Plug 'jiangmiao/auto-pairs'
  Plug 'lukaszb/vim-web-indent'
  Plug 'airblade/vim-gitgutter'

  "React code snippets
  Plug 'cristianoliveira/vim-react-html-snippets'

  "Ultisnips
  Plug 'SirVer/ultisnips'

  "Styledcomponent
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

  "whitespace
  Plug 'ntpeters/vim-better-whitespace'

  "Plug 'mxw/vim-jsx'
  "Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
  Plug 'tpope/vim-fugitive'

  "Old work plugin setting
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  "Plug 'mattn/emmet-vim'
  "Plug 'prabirshrestha/asyncomplete.vim'

  Plug 'junegunn/limelight.vim'

  Plug 'leafgarland/typescript-vim'
  Plug 'ianks/vim-tsx'
  "Plug 'peitalin/vim-jsx-typescript'
  Plug 'quramy/tsuquyomi'
  Plug 'w0rp/ale'
call plug#end()


map <c-f> :call JsBeautify()<cr>


autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

"if quit editor, quit nerdtree directly
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
