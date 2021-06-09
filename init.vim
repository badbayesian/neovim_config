call plug#begin('~/.local/share/nvim/plugged')

Plug 'cjrh/vim-conda'
Plug 'dense-analysis/ale'
Plug 'nvie/vim-flake8'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'psf/black'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'kdheepak/JuliaFormatter.vim'

call plug#end()

colorscheme onedark
set number

" Black
let g:black_linelength = 95
:autocmd BufWritePre *.py Black

" Ale
let g:ale_fixers = {}
let g:ale_fixers.python = ['black']
let g:ale_completion_enabled = 1

" Julia
let g:JuliaFormatter_always_launch_server=1
:autocmd BufWritePre *.jl JuliaFormatterFormat
