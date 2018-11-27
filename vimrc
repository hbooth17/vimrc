"" Set up pathogen for syntastic
syntax on

execute pathogen#infect()
colorscheme desert 

let mapleader = ";"

let g:syntastic_c_config_file = "syntastic_c_config"
let g:syntastic_c_include_dirs = ['/usr/include/mysql']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = {
   \ "regex": ['.*package.*']}
noremap <leader>stm :SyntasticToggleMode<cr>
"errrrrors
""go to first error
noremap <leader>fe :lfir<CR>
""go to next error
noremap <leader>ne :lne<CR>
""go to previous error
noremap <leader>pe :lp<CR>syntastic to always check on write

"" Set up ctags to recursively check for tags files to root directory 
set tags=./tags,tags;$HOME


"Set Tab size permanently
set tabstop=4
set shiftwidth=4
set expandtab

set laststatus=2
"" 'wombat'
""set number relativenumber
let g:lightline = {
    \ 'colorscheme' : 'wombat',
    \ 'component_function': {
    \   'filename':'FilenameForLightLine'
    \ },
    \ }

"Show full path of filename
function! FilenameForLightLine()
    return expand('%:p:f')
endfunction

map <C-n> : NERDTreeToggle<CR>


so ~/.vim/plugins.vim


map <S-\> <S-j>

"move up and down 10 lines at a time
map <S-j> 10j
map <S-k> 10k
"move left and right 10 characters at a time
map <S-l> 10l
map <S-h> 10h


if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
