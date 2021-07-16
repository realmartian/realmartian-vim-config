execute pathogen#infect()
syntax on
filetype plugin indent on

" ----------------------
"  Setup/Enable Plugins
" ----------------------
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'phanviet/vim-monokai-pro'
Plug 'mattn/emmet-vim'
Plug 'MikeCoder/code-fold.vim'
Plug 'preservim/nerdtree'
call plug#end()

" --------------------------------------
"  Start NERDTree and leave cursor n it
" -------------------------------------
autocmd VimEnter * NERDTree

" ------------------------------------------
"  Set OneDark Color Theme once Vim opened
" ------------------------------------------
colo onedark
syntax on

" --------------
"  Enable mouse
" -------------
set mouse=a

" -------------------------------------------
"  Enable word wrapping.. Still WIP on this..
" -------------------------------------------
let s:wrapenabled = 0
function! ToggleWrap()
  set wrap nolist
  if s:wrapenabled
    set nolinebreak
    unmap j
    unmap k
    unmap 0
    unmap ^
    unmap $
    let s:wrapenabled = 0
  else
    set linebreak
    nnoremap j gj
    nnoremap k gk
    nnoremap 0 g0
    nnoremap ^ g^
    nnoremap $ g$
    vnoremap j gj
    vnoremap k gk
    vnoremap 0 g0
    vnoremap ^ g^
    vnoremap $ g$
    let s:wrapenabled = 1
  endif
endfunction
map <leader>w :call ToggleWrap()<CR>

" ------------------------
"  NERDTree Enabled
"  NEDRTree shortcut keys
" ------------------------
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" ----------------------------------------
"      - Default Settings -
" ----------------------------------------

set nopreviewwindow

" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

set whichwrap+=<,>,h,l,[,]
set incsearch
set ignorecase
set smartcase
set smartindent
set wildmenu
set wildmode=full
set number

