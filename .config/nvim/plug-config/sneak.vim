" https://github.com/justinmk/vim-sneak


" label mode: a minimalist alternative to easymotion
let g:sneak#label = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

" imediately move tot the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1

" remap so I can use , and ; with f and t
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;

" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow

" Cool prompt
let g:sneak#prompt = '🔎 '

" I like quickscope better for this since it keeps me in the scope of a single line
" map f <Plug>Sneak_f
" map F <Plug>Sneak_F
" map t <Plug>Sneak_t
" map T <Plug>Sneak_T
" map s s
" nnoremap <a-s> <Plug>Sneak_s
" vnoremap <a-s> <Plug>Sneak_s
nmap <a-s> <Plug>Sneak_s
vmap <a-s> <Plug>Sneak_s
nmap s <Plug>Sneak_s
vmap s <Plug>Sneak_s

" Useful info

" s<Enter>                 | Repeat the last Sneak.
" S<Enter>                 | Repeat the last Sneak, in reverse direction.

" silent! call repeat#set("\<Plug>Sneak_s", v:count)
" silent! call repeat#set("\<Plug>Sneak_S", v:count)
