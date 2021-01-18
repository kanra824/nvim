runtime dein.init.vim

syntax on

set encoding=utf-8
set number
set splitbelow
set splitright
set wildmenu
set cursorline
set expandtab
set tabstop=2
set shiftwidth=2
set smartindent
set virtualedit=onemore

nnoremap j gj
nnoremap k gk

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
set autochdir
set title

hi NormalFloat guifg=#2e3440 guibg=#a3be8c
hi Pmenu cterm=underline ctermfg=250 ctermbg=235 gui=underline guifg=#bcbcbc guibg=#262626
hi PmenuSel cterm=underline ctermfg=250 ctermbg=131 gui=underline guifg=#bcbcbc guibg=#af5f5f

noremap <C-t> :terminal<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l

runtime init/coc.init.vim

runtime init/defx.init.vim
runtime init/denite.init.vim

