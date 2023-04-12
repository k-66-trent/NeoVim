set mouse=a
set number
set completeopt-=preview
set autoindent
set smarttab
set splitbelow splitright
set tabstop=4
set shiftwidth=4
set expandtab

call plug#begin("~/.config/nvim/plugged")

Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/navarasu/onedark.nvim'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/romgrk/barbar.nvim'
Plug 'nvim-tree/nvim-web-devicons'

call plug#end()

nnoremap <C-r> :TagbarToggle<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-y> :TerminalSplit bash<CR>
nnoremap <C-u> :term<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-d> dd<CR>
nnoremap <C-z> u<CR>

let g:onedark_config = {
    \ 'style': 'darker',
\}
colorscheme onedark

augroup exe_code
         autocmd!
         autocmd FileType python nnoremap  <buffer> <localleader> r
                          \ :sp<CR> :term python3 %<CR> :startinsert<CR>
augroup END

