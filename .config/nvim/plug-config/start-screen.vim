" config file originally taken from ChrisAtMachine
let g:startify_custom_header = ['']
        " \ '       _  __     _         __  ___         __     ___',
        " \ '      / |/ /  __(_)_ _    /  |/  /__ _____/ /    |_  |',
        " \ '     /    / |/ / /  ` \  / /|_/ / _ `/ __/ _ \  / __/',
        " \ '    /_/|_/|___/_/_/_/_/ /_/  /_/\_,_/\__/_//_/ /____/',
        " \]

" modified by vee
" let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_session_dir = NVIM_SESSIONSDIR


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]


let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:webdevicons_enable_startify = 1

" function! StartifyEntryFormat()
"         return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
"     endfunction

let g:startify_bookmarks = [
            \ { 'ba': '~/.bash_aliases' },
            \ { 'z': '~/.zshrc' }
            \ ]
" bookmark config example
            " \ { 'c': '~/.config/i3/config' },
            " \ { 'i': '~/.config/nvim/init.vim' },
            " \ { 'z': '~/.zshrc' },
            " \ '~/Blog',
            " \ '~/Code',
            " \ '~/Pics',
            " \ ]

let g:startify_enable_special = 0
