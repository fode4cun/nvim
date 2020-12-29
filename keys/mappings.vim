" Basic Key Mappings

imap <C-h> <C-w>h
imap <C-j> <C-w>j
imap <C-k> <C-w>k
imap <C-l> <C-w>l

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <silent> <C-Up>    :resize -2<CR>
nnoremap <silent> <C-Down>  :resize +2<CR>
nnoremap <silent> <C-Left>  :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>

let g:elite_mode=0                      " Disable arrows"
" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
  nnoremap <C-Up>    :resize -2<CR>
  nnoremap <C-Down>  :resize +2<CR>
  nnoremap <C-Left>  :vertical resize -2<CR>
  nnoremap <C-Right> :vertical resize +2<CR>
endif
