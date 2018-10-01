" generic mappings
" copy to system clip
map <Leader>gy "+y
map <Leader>gY "+Y

"  yank to eol
nnoremap Y y$
" single key command mod
nnoremap : ;
nnoremap ; :
"
" paste toggle
set pastetoggle=<F2>
" generic leader bindings (g)
" fzf
map <Leader>gf :FZF 

" latex leader bindings, prefix: t
" tables
map <Leader>tt o\begin{table}<CR>\centering<CR>\begin{tabular}{cc}\toprule \\ <CR>cat & dog \\ \midrule one & two \\ \bottomrule <CR>\end{tabular}\caption{The caption}\label{table:}\end{table}<CR>
" eqn
map <Leader>te o\begin{equation}<CR>\label{eqn:}<CR>\end{equation}<ESC>kO
" let @t= 'i\begin{table}<CR>\centering<CR>\end{table}<CR>'
" figures
map <Leader>tf o\begin{figure}<CR>\centering<CR>\includegraphics[scale=1]{}<CR>\end{figure}<CR>
" itemization
map <Leader>ti o\begin{itemize}<CR><CR>\end{itemize}<CR><ESC>kki\item 
" bold vector
map <Leader>tbv i\bm{}<ESC>i

"
" python
" window navigation with shift
map <LocalLeader>h <C-W><C-h>
map <LocalLeader>j <C-W><C-j>
map <LocalLeader>k <C-W><C-k>
map <LocalLeader>l <C-W><C-l>
map <LocalLeader>q <C-W>q

