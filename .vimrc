" ===== Core Settings =====
set nocompatible         " Use Vim settings, not Vi compatibility mode
syntax on                " Enable syntax highlighting
set mouse=a              " Enable mouse support in all modes
set showmode             " Show current mode in status line
set ruler                " Show cursor position in status line

" ===== Search Settings =====
set ic                   " Ignore case in searches (case-insensitive)
set smartcase            " Override 'ic' when pattern has upper case characters
set hlsearch             " Highlight search results

" ===== Indentation Settings =====
set tabstop=2            " Width of tab character
set shiftwidth=2         " Set width of an auto-indent
set softtabstop=2        " Makes spaces behave like tabs when editing
set expandtab            " Convert tabs to spaces
set ai                   " Auto indent new lines

" ===== Display Settings =====
set number               " Show line numbers
set showmatch            " Highlight matching brackets
set laststatus=2         " Always show status line
set statusline+=%F       " Add full path to status line

" ===== Text Formatting =====
set textwidth=120        " Set maximum width of text
set nowrap               " Prevent text from wrapping automatically
set formatoptions+=t     " Auto-wrap text at 'textwidth'

" ===== Filetype-specific Settings =====
filetype on              " Enable filetype detection

" Programming language specific settings
autocmd FileType c,cpp,python      setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab  " Use 4 spaces for these
autocmd FileType cmake,html,css,sh setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab  " Use 2 spaces for these

" ===== Automatic Formatting =====
" Format C++ spacing with <leader>fs shortcut (format space)
nnoremap <leader>fs :%s/\<\(if\|for\|while\|main\)(/\1 (/ge<CR>:%s/)\s*{/) {/ge
