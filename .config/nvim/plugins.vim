"" auto-install vim-plug
"if empty(glob('~/.config/nvim/autoload/plug.vim'))
"  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
"    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"  "autocmd VimEnter * PlugInstall
"  autocmd VimEnter * PlugInstall | source $MYVIMRC
"endif


call plug#begin()


Plug 'bkad/CamelCaseMotion'


Plug 'Dimercel/todo-vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'unblevable/quick-scope'
Plug 'liuchengxu/vim-which-key'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'aserebryakov/vim-todo-lists'
Plug 'skywind3000/asyncrun.vim'
Plug 'casprwang/vim-git-it'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'metakirby5/codi.vim'
Plug 'mhinz/vim-startify'
" remove one of those at some point;make a choice
" Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-commentary'
Plug 'justinmk/vim-sneak'
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'

Plug 'chaoren/vim-wordmotion'
Plug 'chrisbra/Colorizer'
"Plug 'ycm-core/YouCompleteMe'

" Plug 'troydm/zoomwintab'

"""""""""""""""
" COLOR SCHEMES

Plug 'drewtempelmeyer/palenight.vim'
Plug 'dracula/vim'
Plug 'navarasu/onedark.nvim'
Plug 'oneKelvinSmith/monokai-vim'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'majutsushi/tagbar'
" Plug 'zchee/deoplete-jedi'
"
"Plug 'davidhalter/jedi-vim'
"" Disable autocompletion (using deoplete instead)
"let g:jedi#completions_enabled = 0
"" Go to definition
"let g:jedi#goto_command = ',d'
"" Find ocurrences
"let g:jedi#usages_command = ',o'
"" Find assignments
"let g:jedi#goto_assignments_command = ',a'
"" Go to definition in new tab
"nmap ,D :tab split<CR>:call jedi#goto()<CR>

"Plug 'ncm2/float-preview.nvim'
"let g:float_preview#docked = 1

"Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Plug 'scrooloose/syntastic'
"let g:syntastic_python_python_exec = 'python3'

"Plug 'roxma/nvim-completion-manager'
"Plug 'roxma/ncm-clang'

"Plug 'ervandew/supertab'
"Plug 'metalelf0/supertab'

""""""""""""""""""""""""""
" ChrisAtMachine plugins "
""""""""""""""""""""""""""
"Plug 'suy/vim-context-commentstring'
"" Change dates fast
"Plug 'tpope/vim-speeddating'
"" Convert binary, hex, etc..
"Plug 'glts/vim-radical'
"" Files
"Plug 'tpope/vim-eunuch'
"" Repeat stuff
"Plug 'tpope/vim-repeat'
"" Surround
"Plug 'tpope/vim-surround'
"" Better Comments
"" Have the file system follow you around
"Plug 'airblade/vim-rooter'
"" auto set indent settings
"Plug 'tpope/vim-sleuth'
"
"" Text Navigation
"" Add some color
"Plug 'norcalli/nvim-colorizer.lua'
"Plug 'luochen1990/rainbow'
"" Better Syntax Support
"Plug 'sheerun/vim-polyglot'
"" Cool Icons
"Plug 'ryanoasis/vim-devicons'
"" Auto pairs for '(' '[' '{'
"Plug 'jiangmiao/auto-pairs'
"" Closetags
"Plug 'alvan/vim-closetag'
"" Themes
"" Intellisense
"" Status Line
"Plug 'vim-airline/vim-airline'
"Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
"" FZF
"" Git
"Plug 'airblade/vim-gitgutter'
"Plug 'tpope/vim-rhubarb'
"Plug 'junegunn/gv.vim'
"" Terminal
"Plug 'voldikss/vim-floaterm'
"" Start Screen
"Plug 'mhinz/vim-startify'
"" Vista
"Plug 'liuchengxu/vista.vim'
"" See what keys do like in emacs
"" Zen mode
"Plug 'junegunn/goyo.vim'
"" Snippets
"Plug 'honza/vim-snippets'
"Plug 'mattn/emmet-vim'
"" Interactive code
"" Debugging
"Plug 'puremourning/vimspector'
"" Better tabline
"Plug 'mg979/vim-xtabline'
"" undo time travel
"Plug 'mbbill/undotree'
"" highlight all matches under cursor
"Plug 'RRethy/vim-illuminate'
"" Find and replace
Plug 'ChristianChiarulli/far.vim'
"" auto change html tags
"plug 'andrewradev/tagalong.vim'
"" live server
"plug 'turbio/bracey.vim'
"" smooth scroll
"plug 'psliwka/vim-smoothie'
"" async tasks
"plug 'skywind3000/asynctasks.vim'
"plug 'skywind3000/asyncrun.vim'
"" swap windows
"plug 'wesq3/vim-windowswap'
"" markdown preview
"" easily create gists
"plug 'mattn/vim-gist'
"plug 'mattn/webapi-vim'

" plugin graveyard

" Better Whitespace
" Plug 'ntpeters/vim-better-whitespace'
" jsx syntax support
" Plug 'maxmellon/vim-jsx-pretty'
" Typescript syntax
" Plug 'HerringtonDarkholme/yats.vim'
" Multiple Cursors
" Plug 'terryma/vim-multiple-cursors'
" Async Linting Engine
" TODO make sure to add ale config before plugin
" Plug 'dense-analysis/ale'
" Plug 'kaicataldo/material.vim'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'tomasiser/vim-code-dark'
" Vim Wiki
" Plug 'https://github.com/vimwiki/vimwiki.git'
" Better Comments
" Plug 'jbgutierrez/vim-better-comments'
" Echo doc
" Plug 'Shougo/echodoc.vim'
" Plug 'hardcoreplayers/spaceline.vim'
" Plug 'vim-airline/vim-airline-themes'
" Ranger
" Plug 'francoiscabrol/ranger.vim'
" Plug 'rbgrouleff/bclose.vim'
" Making stuff
" Plug 'neomake/neomake'
" Plug 'mhinz/vim-signify'
" Plug 'brooth/far.vim'
" Plug 'atishay/far.vim'

call plug#end()


" Automatically install missing plugins on startup
"autocmd VimEnter *
"  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
"  \|   PlugInstall --sync | q
"  \| endif



" Plugin Configuration
source ~/.config/nvim/plug-config/CamelCaseMotion.vim
source ~/.config/nvim/plug-config/todo-vim.vim
source ~/.config/nvim/plug-config/nerdtree.vim
source ~/.config/nvim/plug-config/fzf.vim
source ~/.config/nvim/plug-config/vim-commentary.vim
source ~/.config/nvim/plug-config/codi.vim
source ~/.config/nvim/plug-config/quickscope.vim
source ~/.config/nvim/plug-config/which-key.vim
source ~/.config/nvim/plug-config/coc.vim
source ~/.config/nvim/plug-config/tagbar.vim
source ~/.config/nvim/plug-config/easymotion.vim
source ~/.config/nvim/plug-config/sneak.vim
source ~/.config/nvim/plug-config/start-screen.vim
source ~/.config/nvim/plug-config/far.vim
" source ~/.config/nvim/plug-config/rnvimr.vim
"source ~/.config/nvim/plug-config/rainbow.vim
"source ~/.config/nvim/plug-config/vim-wiki.vim
"source ~/.config/nvim/plug-config/goyo.vim
"source ~/.config/nvim/plug-config/vim-rooter.vim
" source ~/.config/nvim/plug-config/gitgutter.vim
"source ~/.config/nvim/plug-config/closetags.vim
"source ~/.config/nvim/plug-config/floaterm.vim
" vista is an alternative to tagbar
"source ~/.config/nvim/plug-config/vista.vim
"source ~/.config/nvim/plug-config/xtabline.vim
"source ~/.config/nvim/plug-config/polyglot.vim
"source ~/.config/nvim/plug-config/tagalong.vim
"source ~/.config/nvim/plug-config/illuminate.vim
"source ~/.config/nvim/plug-config/bracey.vim
"source ~/.config/nvim/plug-config/asynctask.vim
"source ~/.config/nvim/plug-config/window-swap.vim
" source ~/.config/nvim/plug-config/markdown-preview.vim
"luafile ~/.config/nvim/lua/plug-colorizer.lua
