" generic mappings
"  yank to eol
nnoremap Y y$
" single key command mode
nnoremap : ;
nnoremap ; :
" paste toggle
"set pastetoggle=<F2>
" generic leader bindings (g)
" fzf
"map <Leader>gf :FZF 

" latex leader bindings (tx)
" tables
map <Leader>txt o\begin{table}<CR>\centering<CR>\begin{tabular}{cc}\toprule \\ <CR>cat & dog \\ \midrule one & two \\ \bottomrule <CR>\end{tabular}\caption{The caption}\label{table:}\end{table}<CR>
" eqn
map <Leader>txe o\begin{equation}<CR>\label{eqn:}<CR>\end{equation}<ESC>kO
" let @t= 'i\begin{table}<CR>\centering<CR>\end{table}<CR>'
" figures
map <Leader>txf o\begin{figure}<CR>\centering<CR>\includegraphics[scale=1]{}<CR>\end{figure}<CR>
" itemization
map <Leader>txi o\begin{itemize}<CR><CR>\end{itemize}<CR><ESC>kki\item 
"
" python
" window navigation with shift
map <S-h> <C-W><C-h>
map <S-j> <C-W><C-j>
map <S-k> <C-W><C-k>
map <S-l> <C-W><C-l>
"map <S-q> <C-W>q

