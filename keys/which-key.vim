" Leader Key Maps

let g:mapleader = "\<Space>"
let g:maplocaleader = ','

" Timeout
let g:which_key_timeout = 100
let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}


" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'

let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" Coc Search & refactor
nnoremap <leader>? :CocSearch <C-R>=expand("<cword>")<CR><CR>
let g:which_key_map['?'] = 'search word'

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['/'] = [ ':call Comment()'                                 , 'comment' ]
let g:which_key_map['.'] = [ ':e $MYVIMRC'                                     , 'open init' ]
let g:which_key_map['='] = [ '<C-W>='                                          , 'balance windows' ]
let g:which_key_map['d'] = [ ':Bdelete'                                        , 'delete-buffer']
let g:which_key_map['e'] = [ ':CocCommand explorer --toggle --sources=file+'   , 'explorer' ]
let g:which_key_map['r'] = [ ':RnvimrToggle'                                   , 'toggle ranger']
let g:which_key_map['h'] = [ '<C-W>s'                                          , 'split below']
let g:which_key_map['n'] = [ ':let @/ = ""'                                    , 'no highlight' ]
let g:which_key_map['t'] = [ ':ToggleWhitespace'                               , 'toggle trailing whitespace']
let g:which_key_map['v'] = [ '<C-W>v'                                          , 'split right']
let g:which_key_map['w'] = [ ':StripWhitespace'                                , 'strip whitespace']


call which_key#register('<Space>', "g:which_key_map")

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
