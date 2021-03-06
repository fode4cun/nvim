"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


" General Settings
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/ftplugin/sass.vim

" Themes
source $HOME/.config/nvim/themes/gruvbox.vim

" Plugin Configuration
source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/vim-commentary.vim
source $HOME/.config/nvim/plug-config/better-whitespace.vim
" source $HOME/.config/nvim/plug-config/barbar.vim
source $HOME/.config/nvim/plug-config/closetags.vim
source $HOME/.config/nvim/plug-config/ctrlp.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/plug-config/coc/coc.vim
source $HOME/.config/nvim/plug-config/coc/coc-extensions.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/tagalong.vim
source $HOME/.config/nvim/plug-config/markdown-preview.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/xtabline.vim
source $HOME/.config/nvim/plug-config/indentline.vim
source $HOME/.config/nvim/plug-config/ternjs.vim
source $HOME/.config/nvim/plug-config/deoplete.vim
source $HOME/.config/nvim/plug-config/neomake.vim

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif
