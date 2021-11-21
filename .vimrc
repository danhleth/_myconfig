set guifont=DroidSansMono\ Nerd\ Font\ 11
set encoding=UTF-8
set number 
set updatetime=100
set number relativenumber
set nocompatible              " be iMproved, required


call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'davidhalter/jedi-vim'
Plug 'ericbn/vim-relativize'
Plug 'ryanoasis/vim-devicons'
Plug 'altercation/vim-colors-solarized'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
""----THEMES VIM-----
"Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'ayu-theme/ayu-vim' " or other package manager
Plug 'NLKNguyen/papercolor-theme'
"--------------------------------
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
Plug 'benekastah/neomake'
Plug 'prabirshrestha/vim-lsp'
"if has('nvim') || has('patch-8.0.902')
"  Plug 'mhinz/vim-signify'
"else
"  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
"endif

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()


nnoremap <silent> <F2> :RelativizeToggle<CR>
noremap nt : NERDTreeToggle <CR>
noremap T :terminal <CR>
nnoremap H gT
nnoremap L gt
"---------------.-.-----------------
let g:hexmode_patterns = '*.bin,*.exe,*.dat,*.o'
let g:jedi#use_tabs_not_buffers = 1
"----------------------------------
"let g:airline_theme='base16'
"let g:airline_theme='base16_ashes'
"let g:airline_theme='bubblegum'
let g:airline_theme='cobalt2'
"let g:airline_theme='cool'
"let g:airline_theme='desertink'
"let g:airline_theme='zenburn'
let g:airline_powerline_fonts = 1

let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_denite = 1
let g:webdevicons_enable_vimfiler = 1
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_flagship_statusline = 1
"---------------------------

"--------------Lightline--------------
let g:lightline = {
                        \ 'component_function': {
                        \   'filetype': 'MyFiletype',
                        \   'fileformat': 'MyFileformat',
                        \ }
                        \ }

function! MyFiletype()
        return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
        return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction
set noshowmode
"--------------Challenger-deep themes------------
"if has('vim') || has('termguicolors')
"  set termguicolors
"endif
"colorscheme challenger_deep
"let g:lightline = { 'colorscheme': 'challenger_deep'}
set t_Co=256
:set t_ut=""
set termguicolors
syntax enable
:set nu
set background=dark

"-----------------ayu themes--------------------------------
"set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu

"--------------------------------------

" IndentLine {{
let g:indentLine_setColors = 0
let g:indentLine_char = '-'
let g:indentLine_first_char = '.'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_showFirstIndentLevel = 1
" }}
" ---------------------------------------------------------
set laststatus=2

""---------------Paper Color Themes---------------------

set background=light
colorscheme PaperColor
set termguicolors


"------config systax Paper color themes ------
let g:PaperColor_Theme_Options = {
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     },
  \     'cpp': {
  \       'highlight_standard_library': 1
  \     },
  \     'c': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }
