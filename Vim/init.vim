set nocompatible

so ~/.config/nvim/plugins.vim


set backspace=indent,eol,start

" Easy access to paste when using system clipboard "
set paste

let mapleader = ','

" My preferences for tabs n such "
set number
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" ----------------- VISUALS----------------- "  

set t_Co=256

packadd! dracula_pro
syntax enable

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
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ 'link': 'some_bad_symbolic_links',
	\ }

" Ignores any file in the .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Remapping keys
nnoremap <leader>z :Goyo<cr>
map <leader>nn :NERDTreeToggle<cr>


" Plugin settings
let g:NERDTreeWinPos = "right"
" HREF: https://github.com/neoclide/coc.nvim/wiki/Using-workspaceFolders#resolve-workspace-folder
" NOTE: setting up workspace folders
autocmd FileType python let b:coc_root_patterns = ['.git', '.env']


" Automagically sources our vimrc file "
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END
