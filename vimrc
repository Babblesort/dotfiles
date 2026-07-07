" ---- basic syntax highlighting setup ----
set nocompatible          " use Vim (not vi) behavior
syntax on                 " enable syntax highlighting
filetype plugin indent on " detect file types, load ftplugins/indent

" treat ambiguous shell scripts (no extension/shebang) as bash
let g:is_bash = 1

" colors
set background=dark       " assume a dark terminal; change to 'light' if needed
if has('termguicolors')
  set termguicolors       " use 24-bit color if the terminal supports it
endif
colorscheme habamax       " built-in scheme; browse others with :colorscheme <Tab>

" inherit the terminal's background instead of the colorscheme's
highlight Normal      ctermbg=NONE guibg=NONE
highlight NonText     ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE

" dim gray comments (xterm 240 == #585858)
highlight Comment ctermfg=240 guifg=#585858

" line numbers in ANSI color 3 (yellow == #808000)
highlight LineNr ctermfg=3 guifg=#808000

" status line: navy background (xterm 17 == #00005f) with light text
highlight StatusLine ctermbg=17 guibg=#00005f ctermfg=white guifg=#ffffff

" ---- editing defaults ----
set number                " show absolute line numbers
set cursorline            " highlight the line the cursor is on

" search
set hlsearch              " highlight all matches
set incsearch             " jump to matches as you type
set ignorecase            " case-insensitive search...
set smartcase             " ...unless the pattern has an uppercase letter
" press Enter to clear search highlight
nnoremap <silent> <CR> :nohlsearch<CR>

" indentation
set autoindent            " keep indent from previous line
set expandtab             " use spaces instead of tabs
set tabstop=4             " a tab counts as 4 columns
set shiftwidth=4          " >> and << shift by 4
set softtabstop=4         " Tab/Backspace act on 4 spaces

" quality-of-life
set showcmd               " show partial commands in the last line
set wildmenu              " visual autocomplete for command menu (:e <Tab>)
set scrolloff=3           " keep 3 lines of context above/below cursor
set laststatus=2          " always show the status line
set backspace=indent,eol,start  " make backspace behave normally
set mouse=a               " enable mouse support in all modes
