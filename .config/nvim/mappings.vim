"""""""""""""""""""""""""""""
" vee's generic keybindings "
"""""""""""""""""""""""""""""

let mapleader = " "
let g:mapleader = "\<Space>"
" You can't stop me
cmap w!! w !sudo tee %
nnoremap <C-n> :NERDTreeToggle<cr>
nnoremap <leader>f <C-]>
nnoremap <leader>= gg=G<c-o><c-o>
": disable autocomment
nnoremap <leader>cro :setlocal formatoptions-=cro<cr>
" cnext : next make error
nnoremap <leader>n :cnext<cr>
nnoremap <leader>N :cprev<cr>
" Toggle paste mode on and off
nnoremap <leader>pm :setlocal paste!<cr>
" Fast saving
nnoremap <leader>ww :w!<cr>
nnoremap <leader>we :w!<cr>
nnoremap W :w!<cr>
nnoremap Q :q<cr>
nnoremap <A-w> :w<cr>
nnoremap <leader>wa :wa!<cr>
nnoremap <leader>wq :wq!<cr>
" quick write and make
nnoremap <leader>wm :wa<cr>:make<cr>
nnoremap <leader>ws :wa<cr>:so %<cr>
" Disable highlight when <leader><cr> is pressed
nnoremap <silent> <leader><cr> :noh<cr>
" fast replace current word
""nnoremap <a-s> :%s/\<<C-r><C-w>\>//ge<Left><Left><Left>
nnoremap <leader>s :%s/\<<C-r><C-w>\>//ge<Left><Left><Left>
" vnoremap <leader>s :'<,'>%s//ge<Left><Left><Left>
vnoremap <leader>s y:%s/\<<C-r>0\>//ge<Left><Left><Left>
" fast project refactor. Do :args *.*pp to select .cpp and .hpp files beforehand
nnoremap <leader>R :argdo %s/\<<C-r><C-w>\>//gce<Left><Left><Left><Left>
nnoremap <leader>r :%s/\<<C-r><C-w>\>//gce<Left><Left><Left><Left>
vnoremap <leader>r :%s/\<<C-r><C-w>\>//gce<Left><Left><Left><Left>
" Alternate way to save
nnoremap <c-s> :w<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>

" Better indenting in visual mode
vnoremap < <gv
vnoremap > >gv

" repeat action without having to press shift
" TODO: removed for which reason again?
"nnoremap ; .
"""""""""""""""
" insert mode "
"""""""""""""""
" use ctrl-backspace like a human being
" so that I stop closing 3 browser tabs
" when tapping C-w out of habit
imap <C-BS> <C-w>  " does not work in terminal vim
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>
" the quick brown fox jumps over the lazy dog
" the quick brown fox jumps over the lazy dog
" the quick brown fox jumps over the lazy dog
" the quick brown fox jumps over the lazy dog
" the quick brown x jumps over the lazy dog
" an even simpler way to define Ctrl-Del 
imap <C-DEL> <esc>lce

inoremap <c-s> <esc>:w!<cr>a
" inoremap <c-s-s> <esc>:w!<cr>
" inoremap <C-S> <esc>:w!<cr>

" In insert or command mode, move normally by using Ctrl
inoremap <A-h> <Left>
inoremap <A-j> <Down>
inoremap <A-k> <Up>
inoremap <A-l> <Right>
inoremap <A-e> <Esc>ea
inoremap <A-b> <Esc>bi
inoremap <A-d> <DEL>
inoremap <A-s> <BS>
inoremap <A-_> <Esc>I
inoremap <A-a> <Esc>A
inoremap <a-s-I> <Esc>I
inoremap <a-s-0> <Esc>0i
" inser new line without disrupting the current line
inoremap <A-m> <Esc>o
inoremap <A-M> <Esc>O

inoremap <A-u> <Esc>
inoremap <A-i> <Esc>
inoremap <A-o> <Esc>

inoremap <A-w> <Esc>:w<CR>a
inoremap <A-t> `
inoremap <c-z> <esc>ua
" inoremap ???? <esc>
" inoremap ???? <esc>
" inoremap ???? <esc>
" inoremap ???? <esc>

" inoremap ?? \
" vim-commentary additional mappings. 'gcc' ain't that practical
nmap <leader>cc <Plug>CommentaryLine
nmap <leader>c <Plug>Commentary
xmap <leader>c <Plug>Commentary
omap <leader>c <Plug>Commentary

"""""""""""""""
" normal mode "
"""""""""""""""
nnoremap & 1
nnoremap ?? 2
nnoremap - 6
nnoremap ?? 7
nnoremap ?? $
nnoremap ?? 0
nnoremap <leader>& 1
nnoremap <leader>?? 2
nnoremap <leader>" 3
nnoremap <leader>' 4
nnoremap <leader>( 5
nnoremap <leader>- 6
nnoremap <leader>?? 7
nnoremap <leader>_ 8
nnoremap <leader>?? 9
nnoremap <leader>?? 0
"nnoremap d?? d$
"nnoremap d?? d0
"nnoremap y?? y$
"nnoremap c?? c$
"nnoremap c?? c0
nnoremap gb G
" moving normally within a wrapped line
" WARNING might cause problems.
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" move faster with A-j and A-k in normal mode
nnoremap <a-j> 5j
nnoremap <a-k> 5k
vnoremap <a-j> 5j
vnoremap <a-k> 5k
nnoremap <silent> <PageDown> 10j
nnoremap <silent> <PageUp> 10k
vnoremap <silent> <PageDown> 10j
vnoremap <silent> <PageUp> 10k
inoremap <silent> <PageDown> <Esc>10<Down>i
inoremap <silent> <PageUp> <Esc>10<Up>i

nnoremap <a-b> 3b
nnoremap <a-e> 3e
vnoremap <a-b> 3b
vnoremap <a-e> 3e

nnoremap <a-i> 0
nnoremap <a-a> $
vnoremap <a-i> 0
vnoremap <a-a> $
" insert lines without entering insert mode
nnoremap <A-o> o<Esc>k
nnoremap <A-O> O<Esc>j
nnoremap <leader>o o<Esc>k
nnoremap <leader>O O<Esc>j

" YANKING, CUTTING, PASTING, DELETING

nnoremap x "_x
nnoremap s "_s

nnoremap D "_dd
nnoremap <leader>dd "_dd
nnoremap <leader>di "_di
nnoremap d<space> "_dd
nnoremap d<backspace> "_dd

nnoremap dz d$
nnoremap <leader>da "_d$
nnoremap de "_de
nnoremap <leader>de "_de

nnoremap cd "_cc<Esc>
nnoremap ce "_ce
nnoremap cz "_c$
nnoremap cc "_cc
nnoremap dx "_dd
nnoremap dc "_dd

nnoremap U <c-r>

" VISUAL MODE
"go to last character of selection after yanking
vnoremap Y y`]
vnoremap x "_x
vnoremap s "_s
vnoremap c "_c

" yank and paste in OS clipboard
nnoremap <A-y> "+yy
nnoremap <A-p> "+p
nnoremap <A-P> "+P

vnoremap <A-y> "+y
vnoremap <A-p> "+p
vnoremap <A-P> "+P

inoremap <c-V> <esc>"+pa

" Smart way to move between windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
" nnoremap gh <C-W>h
" nnoremap gl <C-W>l
" nnoremap gj <C-W>j
" nnoremap gk <C-W>k
nnoremap <leader>h <C-W>h
nnoremap <leader>l <C-W>l
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <cr>h <C-W>h
nnoremap <cr>l <C-W>l
nnoremap <cr>j <C-W>j
nnoremap <cr>k <C-W>k
" nnoremap H <C-W>h
" nnoremap L <C-W>l
"closing window
nnoremap <A-x> :q<CR>
nnoremap <leader>qq :q!<cr>
nnoremap <leader>qa :qa!<cr>

"folding
" nnoremap zz za
nnoremap zk zc
nnoremap zj zo
nnoremap ze zo
nnoremap za zc
nnoremap zr zR
nnoremap zm zM

"""""""""""
" buffers "
"""""""""""

" FZF buffers
map <leader>bf :Buffers<CR>
" nnoremap <leader>bb :buffers<cr>
nnoremap <leader>bb :buffers<cr>:b<space> 
nnoremap <leader>bd :Bclose<cr>:tabclose<cr>gT
nnoremap <leader>ba :bufdo bd<cr>
" nnoremap <leader>l :bnext<cr>
" nnoremap <leader>h :bprevious<cr>
nnoremap gp <c-o>
nnoremap gn <c-i>


""""""""
" tabs "
""""""""

nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove +1<cr>
nnoremap <leader>tM :tabmove -1<cr>
"nnoremap <leader>t<leader> :tabnext 
nnoremap gr gT
nnoremap gl gt
nnoremap gh gT
nnoremap <leader>tl gt
nnoremap <leader>th gT
nnoremap <A-l> gt
nnoremap <A-h> gT
" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
nnoremap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>

" Remove the Windows ^M - when the encodings gets messed up
nnoremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

nnoremap <leader>ii >>
nnoremap <leader>I <<

"""""""""""
" COMMAND MODE "
"""""""""""
cnoremap <a-i> <C-c>
cnoremap <a-u> <C-c>
cnoremap <a-o> <C-c>
cnoremap <A-h> <Left>
cnoremap <A-j> <Down>
cnoremap <A-k> <Up>
cnoremap <A-l> <Right>
cnoremap <A-m> <CR>
cnoremap <A-a> <END>
cnoremap <A-_> <HOME>
cnoremap <A-d> <DEL>
cnoremap <A-s> <BS>
cnoremap <a-b> <c-Left>
cnoremap <a-e> <c-Right>

""""""""""""
" TERMINAL "
""""""""""""
tnoremap <Esc> <C-\><C-n>
tnoremap <a-i> <C-\><C-n>
tnoremap <a-u> <C-\><C-n>
tnoremap <a-o> <C-\><C-n>
tnoremap <A-h> <Left>
tnoremap <A-j> <Down>
tnoremap <A-k> <Up>
tnoremap <A-l> <Right>
tnoremap <A-e> <C-\><C-n>>ea
tnoremap <A-b> <C-\><C-n>bi
tnoremap <A-d> <DEL>
tnoremap <A-s> <BS>
tnoremap <A-_> <C-\><C-n>I
tnoremap <A-a> <C-\><C-n>A
tnoremap <A-m> <CR>
" in terminal mode, use c-h, c-j, c-k, c-l to change buffer even in insert mode
tnoremap <c-h> <C-\><C-n><C-w>h
tnoremap <c-j> <C-\><C-n><C-w>j
tnoremap <c-k> <C-\><C-n><C-w>k
tnoremap <c-l> <C-\><C-n><C-w>l

nnoremap <leader>x :w<cr>:!./%<cr>
