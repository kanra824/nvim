runtime vimplug.init.vim

set encoding=utf-8
" 行番号
set number
" 編集中の行にカーソルラインを表示
set cursorline
" 編集中の行にカーソルラインを表示
set cursorcolumn
" タブ文字の表示幅
set tabstop=2
" インデント幅
set shiftwidth=2
" 入力に合わせてインデントを増減
set smartindent
" 一つ右にすすめる
set virtualedit=onemore
" 検索時に大文字小文字を区別しない
set ignorecase
" 小文字で検索すると大文字小文字を無視
set smartcase
" <CR>しなくても検索を開始
set incsearch
" 検索が最後まで行ったら最初に戻る
set wrapscan
" 検索結果をハイライト
set hlsearch
" カレントディレクトリを自動で移動する
set autochdir
" コマンドラインの高さ
set cmdheight=2
" 不可視文字の表示
set list

 hi NormalFloat guifg=#2e3440 guibg=#a3be8c
 hi Pmenu cterm=underline ctermfg=250 ctermbg=235 gui=underline guifg=#bcbcbc guibg=#262626
 hi PmenuSel cterm=underline ctermfg=250 ctermbg=131 gui=underline guifg=#bcbcbc guibg=#af5f5f
" hi CocErrorSign ctermfg=15 ctermbg=9
" hi CocWarningSign ctermfg=11 ctermbg=0

syntax on
"filetype plugin indent on
"set termguicolors

noremap <C-t> :terminal<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l
nnoremap j gj
nnoremap k gk
nnoremap gl $
nnoremap gh 0
nnoremap gb <A-b>

runtime init/coc.init.vim
runtime init/defx.init.vim
runtime init/denite.init.vim
runtime init/ale.init.vim
runtime init/autopairs.init.vim

autocmd! FileType json set filetype=jsonc

" coc-prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

