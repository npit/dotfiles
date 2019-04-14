set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

filetype off                  " required
" Line numbering and auto-toggling
set number relativenumber
" leader key
let mapleader=","
let maplocalleader="\<tab>"


"python with virtualenv support
"
let g:powerline_loaded = 1
let g:python_host_prog = '/usr/bin/python'
let python_highlight_all=1
highlight BadWhitespace ctermbg=darkgreen guibg=darkgreen
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

call plug#begin('~/.vim/plugged')

Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
" Plug 'Valloric/YouCompleteMe'
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
" Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'flazz/vim-colorschemes'
" airline plugins
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/bling/vim-bufferline.git'
Plug 'ryanoasis/vim-devicons'

Plug 'https://github.com/plasticboy/vim-markdown.git'
" Plug 'powerline/powerline', { 'rtp': 'powerline/bindings/vim' }
Plug 'tpope/vim-surround'
Plug 'nightsense/seagrey'
" Plug 'qualiabyte/vim-colorstepper'
" Plug 'w0rp/ale'
Plug 'mtth/scratch.vim'
Plug 'lervag/vimtex'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdcommenter'
Plug 'rking/ag.vim'
Plug 'easymotion/vim-easymotion'
Plug 'vim-voom/VOoM'

Plug 'neomake/neomake'

" deoplete
Plug 'zchee/deoplete-jedi',
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

set splitbelow
set splitright

" greek: change insert model lang with C-6
set keymap=greek_utf-8
set iminsert=0
set imsearch=-1

""" neovim stuff
" clipboard
set clipboard+=unnamedplus
" async completion
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#show_docstring = 1


let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:vim_markdown_folding_disabled = 1
let g:SuperTabClosePreviewOnPopupClose = 1
let g:bufferline_rotate = 1
let g:bufferline_modified = ' ✻'


" end of neovim stuf

set autoread
set fillchars=vert:\│



" easymotion leader
map <SPACE> <Plug>(easymotion-prefix)

"ag settings
let g:ag_working_path_mode="r"
"split navigations
nnoremap <A-J> <C-W><C-J>
nnoremap <A-K> <C-W><C-K>
nnoremap <A-L> <C-W><C-L>
nnoremap <A-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

let g:SimpylFold_docstring_preview=1

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

au BufNewFile,BufRead *.yml,*.yaml 
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

set encoding=utf-8
let g:ycm_autoclose_preview_window_after_completion=1
if !exists('g:ycm_semantic_triggers')                                                                                                                                                  
     let g:ycm_semantic_triggers = {}  
endif                                                                                                                                                                                  
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme 
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


syntax on

" colorscheme Revolution
" colorscheme alduin
colorscheme PaperColor

" Always display the powerline
set laststatus=2

" Switch color schemes
call togglebg#map("<F5>")
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Clipboard
set clipboard=unnamed

" add addenda from youtube video : https://www.youtube.com/watch?v=XA2WjJbmmoM
" provide tab-completion for all file-related tasks
set path+=**
" display all matching files @ tab completion
set wildmenu

" hightlight search matches
set hlsearch

" highlight search while typing
set incsearch

" Cycle themes
" nmap <F6> <Plug>ColorstepPrev
" nmap <F8> <Plug>ColorstepNext
" nmap <S-F8> <Plug>ColorstepReload
" highlight cursor line
set cursorline
" kill the arrow keys
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>
" stop auto line breaking
set textwidth=0
set wrapmargin=0
" toggle search hightlight
nnoremap <F3> :set hlsearch!<CR>
" open new buffers in tabs: this breaks YCM
" au BufAdd,BufNewFile * nested tab sball

" linting with ale
" let g:ale_lint_on_enter = 0
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_sign_error = '>>'
" let g:ale_sign_warning = '--'
" let g:ale_set_highlights = 0
"set completeopt-=preview

" automatically set paste mode. handle tmux cases too
" ---------------------------------------------------
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
" ---------------------------------------------------
let g:vimtex_compiler_latexmk = {'callback' : 0}
" let g:vimtex_view_method = 'okular'

" fzf
imap <c-x><c-l> <plug>(fzf-complete-line)
" nerdtree
map <C-J> ;NERDTreeToggle<CR>
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/airline.vim


" live updates
set inccommand=split

"" " Copy to system clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from system clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
