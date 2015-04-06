set nocompatible | filetype indent plugin on | syn on

syntax on
set number
filetype plugin on
colorscheme elflord

"set omnifunc=syntaxcomplete#Complete
"set completeopt=longest,menuone
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  "\ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  "\ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

fun! SetupVAM()
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'

  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
  if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
    execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '
        \       shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
  endif
 call vam#ActivateAddons([], {})

endfun
call SetupVAM()

VAMActivate UltiSnips  molokai Supertab The_NERD_Commenter
colorscheme molokai
set tabstop=4

