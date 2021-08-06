" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'flazz/vim-colorschemes'
colorscheme monokai

Plug 'vim-airline/vim-airline'	
Plug 'vim-airline/vim-airline-themes'

Plug 'kien/ctrlp.vim'

"Plug 'neoclide/coc.nvim', {'branch': 'release'}	
Plug 'vim-syntastic/syntastic'						
Plug 'jiangmiao/auto-pairs'


call plug#end()

set number
syntax on

" COC
set timeoutlen=500 		
set cmdheight=2 		

inoremap <C-d> <Esc>:set cmdheight=2<CR>a
inoremap <C-t> <Esc>:set cmdheight=10<CR>a
nnoremap <C-d> :set cmdheight=2<CR>
nnoremap <C-t> :set cmdheight=10<CR>

set updatetime=1000
set shortmess+=c
"set signcolumn=yes
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" nnoremap ? :call <SID>show_documentation()<CR>
" function! s:show_documentation()
  " if (index(['vim','help'], &filetype) >= 0)
    " execute 'h '.expand('<cword>')
  " else
    " call CocAction('doHover')
  " endif
" endfunction


" autocmd CursorHold * silent call CocActionAsync('highlight')

