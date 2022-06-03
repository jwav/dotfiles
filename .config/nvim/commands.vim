""""""""""""""""""
" MY COMMANDS "
""""""""""""""""""

command! MyInit execute('e '.NVIM_CONFIGDIR.'/init.vim')
command! VsInit execute('vs '.NVIM_CONFIGFILE)
command! SpInit execute('sp '.NVIM_CONFIGFILE)
command! SoInit execute('source '.NVIM_CONFIGFILE)

command! MyPlugins execute('e '.NVIM_CONFIGDIR.'/plugins.vim')
command! VsPlugins execute('vs '.NVIM_CONFIGDIR.'/plugins.vim')
command! SpPlugins execute('sp '.NVIM_CONFIGDIR.'/plugins.vim')

command! MyMappings execute('e '.NVIM_CONFIGDIR.'/mappings.vim')
command! VsMappings execute('vs '.NVIM_CONFIGDIR.'/mappings.vim')
command! SpMappings execute('sp '.NVIM_CONFIGDIR.'/mappings.vim')

command! MyCommands execute('e '.NVIM_CONFIGDIR.'/commands.vim')
command! VsCommands execute('vs '.NVIM_CONFIGDIR.'/commands.vim')
command! SpCommands execute('sp '.NVIM_CONFIGDIR.'/commands.vim')

command! SpTerm execute('sp | ter')
command! VsTerm execute('vs | ter')

command! FoldCpp setlocal foldmethod=syntax foldnestmax=2
command! FoldPython setlocal foldmethod=indent foldnestmax=2
command! FoldVim setlocal foldmethod=indent foldnestmax=1

command! TransparentBackground hi Normal guibg=none ctermbg=none
" g:colors_name is the currently set colorscheme name
command! OpaqueBackground execute('colorscheme '.g:colors_name)

"command! Nvimcd execute('cd '.NVIM_CONFIGDIR)
command! Wso w | so %
command! Waso wa |so so %
" Automatically save the session when leaving Vim
"autocmd! VimLeave * mksession ~/Session.vim
"command! SaveSession mksession! ~/Session.vim
command! -nargs=* SaveSession call SaveSession(<f-args>)
" Automatically load the session when entering vim
"autocmd! VimEnter * source ~/Session.vim
"command! LoadSession source ~/Session.vim
command! -nargs=* LoadSession call LoadSession(<f-args>)
command! ListSessions execute('vs '.NVIM_SESSIONSDIR)
" set directory to current file's dir
command! Chdir cd %:p:h

function SaveSession(...)
    " arguments memo by analogy with python : ...=*args, a:0=len(args) , a:1=args[0], a:2=args[1], ...
    let filename = g:NVIM_SESSIONSDIR.'/Session.session'
    if a:0 >= 1
        let filename = g:NVIM_SESSIONSDIR.'/Session_'.a:1.'.session'
    endif
    execute('mksession! '.filename)
    echo 'Saved session as '.filename
endfunction

function LoadSession(...)
    let filename = g:NVIM_SESSIONSDIR.'/Session.session'
    if a:0 >= 1
        let filename = g:NVIM_SESSIONSDIR.'/Session_'.a:1.'.session'
    endif
    execute('source '.filename)
    echo 'Loaded session '.filename
endfunction

""""""""""""""""""""
" GLEANED COMMANDS "
""""""""""""""""""""

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

function! CmdLine(str)
    call feedkeys(":" . a:str)
endfunction 

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

function! NumbersAzertyWithoutShift()
    echo 'Switched Mode : NO SHIFT FOR NUMBERS'

    nnoremap & 1
    nnoremap é 2
    nnoremap " 3
    nnoremap ' 4
    nnoremap ( 5
    nnoremap - 6
    nnoremap è 7
    nnoremap _ 8
    nnoremap ç 9
    nnoremap à 0

    " nnoremap 1 & 
    " nnoremap 2 é 
    nnoremap 3 " 
    nnoremap 4 ' 
    nnoremap 5 ( 
    nnoremap 6 - 
    nnoremap 7 è 
    nnoremap 8 _ 
    nnoremap 9 ç 
    nnoremap 0 à 
endfunction
nnoremap <leader>__ :call NumbersAzertyWithoutShift()<CR>
command! NumbersAzertyWithoutShift call NumbersAzertyWithoutShift()

function! NumbersAzertyWithShift()
    echo 'Switched Mode : USE SHIFT FOR NUMBERS'
    nnoremap & &
    nnoremap é é
    nnoremap " "
    nnoremap ' '
    nnoremap ( (
    nnoremap - -
    nnoremap è è
    nnoremap _ _
    nnoremap ç ç
    nnoremap 0 0

    nnoremap 1 1
    nnoremap 2 2
    nnoremap 3 3
    nnoremap 4 4
    nnoremap 5 5
    nnoremap 6 6
    nnoremap 7 7
    nnoremap 8 8
    nnoremap 9 9
    nnoremap 0 0
endfunction
command! NumbersAzertyWithShift call NumbersAzertyWithShift()

" this enables word navigations within_this_kind_of_name
function! SetUnderscoreAsSeparator()
    echo '_ is no longer a keyword'
    set iskeyword-=_
endfunction

function! UnsetUnderscoreAsSeparator()
    echo '_ is now a keyword'
    set iskeyword+=_
endfunction

" test this sentence_with_underscore 

command! UnderscoreSeparate call SetUnderscoreAsSeparator()
command! UnderscoreDeseparate call UnsetUnderscoreAsSeparator()

" TODO: expand
" function! InsertStrftime(fmt)
"     execute('put=strftime(\''.fmt.'\'')
" endfunction
command! InsertDateTimeC InsertStrftime('%c')
command! InsertDateadby pu=strftime('%a %d %b %Y')
command! InsertTimeT pu=strftime('%T')
" Some strftime() format string examples
" Format String              Example output
" -------------              --------------
" %c                         Thu 27 Sep 2007 07:37:42 AM EDT (depends on locale)
" %a %d %b %Y                Thu 27 Sep 2007
" %b %d, %Y                  Sep 27, 2007
" %d/%m/%y %H:%M:%S          27/09/07 07:36:32
" %H:%M:%S                   07:36:44
" %T                         07:38:09
" %m/%d/%y                   09/27/07
" %y%m%d                     070927
" %x %X (%Z)                 09/27/2007 08:00:59 AM (EDT)
" %Y-%m-%d                   2016-11-23
" %F                         2016-11-23 (works on some systems)

" RFC822 format:
" %a, %d %b %Y %H:%M:%S %z   Wed, 29 Aug 2007 02:37:15 -0400

" ISO8601/W3C format (http://www.w3.org/TR/NOTE-datetime):
" %FT%T%z                    2007-08-29T02:37:13-0400


command! Chmodx execute('!chmod +x %')
