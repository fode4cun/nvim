" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Themes
    Plug 'morhetz/gruvbox'

    " Better tabline
    " Plug 'romgrk/barbar.nvim'
    " Plug 'kyazdani42/nvim-web-devicons'

    " Show Tralling WhiteSpaces
    Plug 'ntpeters/vim-better-whitespace'
    " Better Comments
    Plug 'tpope/vim-commentary'
    " Text Navigation
    Plug 'unblevable/quick-scope'
    " Rnvimr is a NeoVim plugin that allows you to use Ranger in a floating window
    Plug 'kevinhwang91/rnvimr'
    " CTRL+P
    Plug 'kien/ctrlp.vim'
    " Closetags
    Plug 'alvan/vim-closetag'
    Plug 'tpope/vim-surround'
    Plug 'mattn/emmet-vim'
    " Auto change html tags
    Plug 'AndrewRadev/tagalong.vim'
    " Coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Start Screen
    Plug 'mhinz/vim-startify'
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
    " Tabline
    Plug 'mg979/vim-xtabline'
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Intuitive buffer closing
    Plug 'moll/vim-bbye'
    " Preview markdown on your modern browser with synchronised scrolling and flexible configuration
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
            \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
            \|   PlugInstall --sync | q
            \| endif
