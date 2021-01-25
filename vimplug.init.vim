call plug#begin('~/.vim/plugged')

" filer
if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" icon
Plug 'ryanoasis/vim-devicons'

" icon
Plug 'kristijanhusak/defx-icons'

" display git status on defx
Plug 'kristijanhusak/defx-git'

" file search
Plug 'Shougo/denite.nvim'

" use language server
Plug 'neoclide/coc.nvim'


" gaming parentheses
Plug 'luochen1990/rainbow'
  let g:rainbow_active = 1

" resize window
Plug 'simeji/winresizer'

" manipulate git
Plug 'tpope/vim-fugitive'

" display git-diff on leftside
Plug 'airblade/vim-gitgutter'

" comentout selected rows
Plug 'tpope/vim-commentary'

" cool vim statusline
Plug 'vim-airline/vim-airline'
  nmap <C-p> <Plug>AirlineSelectPrevTab
  nmap <C-n> <Plug>AirlineSelectNextTab
  noremap <C-q> :bdelete<CR>
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_powerline_fonts = 1
  " タブに表示する名前（fnamemodifyの第二引数）
  let g:airline#extensions#tabline#fnamemod = ':t'

" vim-airline colorscheme
Plug 'vim-airline/vim-airline-themes'
  let g:airline_theme = 'light'

" linter
Plug 'dense-analysis/ale'

Plug 'jiangmiao/auto-pairs'

Plug 'rust-lang/rust.vim'
let g:rustfmt_autosave = 0

Plug 'tpope/vim-surround'

Plug 'plasticboy/vim-markdown'

Plug 'previm/previm'
    autocmd BufRead,BufNewFile *.md  set filetype=markdown
    nnoremap <silent> <C-m> :PrevimOpen<CR>
    let g:vim_markdown_folding_disabled=1
    let g:previm_enable_realtime=1

Plug 'tyru/open-browser.vim'

" toml
Plug 'kkiyama117/coc-toml'

" colorscheme
Plug 'wadackel/vim-dogrun'

" Rust
"Plug 'rust-lang/rust.vim'

" zen-mode
Plug 'junegunn/goyo.vim'


call plug#end()


