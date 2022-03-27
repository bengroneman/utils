set nocompatible

so ~/.config/nvim/plugins.vim

packadd! dracula_pro
syntax enable

set backspace=indent,eol,start

" Easy access to paste when using system clipboard "
set paste

let mapleader = ','

" My preferences for tabs n such "
set number
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" ----------------- VISUALS----------------- "

set t_Co=256

set background=dark
colorscheme dracula_pro

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" Allows for highlighting your search query"
set hlsearch

" Ctrl-P Ignores Certain Folders n Files "
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules)$',
        \ 'file': '\v\.(exe|so|dll)$',
        \ }

" Ignores any file in the .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Remapping keys
nnoremap <leader>z :Goyo<cr>
map <leader>nn :NERDTreeToggle<cr>


" Plugin settings
let g:NERDTreeWinPos = "right"

" START Syntastic plugin recommended settings "
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" END Syntastic plugin recommended settings "

" Automagically sources our vimrc file "
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %n

