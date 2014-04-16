"[ .vimrc ]
  version 7.0
  set nocompatible

"[ editing ]
  set expandtab "insert space chars whenever tab is pressed, use Ctrl-V<Tab> to enter real tab
  set shiftwidth=2
  set tabstop=2
  set softtabstop=2
  set autoindent
  set backspace=indent,eol,start

"[ syntax ]
"  set syntax=c
  filetype on
  syntax on

"[ ruler ]
  "set ruler
  "set rulerformat=%30(%=%5*moonbear%4*%m\ %3*%l%4*,\ %3*%c%4*\ \<\ %2*%P%4*\ \>%)
  set showcmd

"[ status ]
  highlight User1 ctermfg=Red
  highlight User2 term=underline cterm=underline ctermfg=Green
  highlight User3 term=underline cterm=underline ctermfg=Yellow
  highlight User4 term=underline cterm=underline ctermfg=white
  highlight User5 ctermfg=cyan
  highlight User6 ctermfg=white
  set laststatus=2
  set statusline=%4*%<\ %1*[%F]%4*\ %5*%y%4*%=%6*%m%4*\ %3*%l%4*,\ %3*%c%4*\ \<\ %2*%P%4*\ \>

"[ mouse ]
"  set mouse=a

"[ misc ]
  set showmatch
  set showmode
  set history=50
  set hlsearch
  set number

"[ visual effect ]
  highlight comment ctermfg=darkcyan
  highlight search ctermbg=yellow
  highlight search ctermfg=black
" show trailing spaces in yellow (or red, for users with dark backgrounds).
" "set nolist" to disable this.
" this only works if syntax highlighting is enabled.
set list
set listchars=tab:\ \ ,trail:\ ,extends:»,precedes:«
if &background == "dark"
  highlight SpecialKey ctermbg=Red guibg=Red
else
  highlight SpecialKey ctermbg=Yellow guibg=Yellow
end
colorscheme wombat256 " use this color scheme

"[ Auto generate header contents for some file types ]
"python
autocmd bufnewfile *.py so ~/.vim/auto_headers/python_header
autocmd bufnewfile *.py exe "1," . 10 . "g/Creation Date:.*/s//Creation Date : " .strftime("%m-%d-%Y")
autocmd Bufwritepre,filewritepre *.py execute "normal ma"
autocmd Bufwritepre,filewritepre *.py exe "1," . 10 . "g/Last Modified:.*/s/Last Modified:.*/Last Modified: " .strftime("%c")
autocmd bufwritepost,filewritepost *.py execute "normal `a"
"R
autocmd bufnewfile *.R so ~/.vim/auto_headers/r_header
autocmd bufnewfile *.R exe "1," . 10 . "g/Creation Date:.*/s//Creation Date : " .strftime("%m-%d-%Y")
autocmd Bufwritepre,filewritepre *.R execute "normal ma"
autocmd Bufwritepre,filewritepre *.R exe "1," . 10 . "g/Last Modified:.*/s/Last Modified:.*/Last Modified: " .strftime("%c")
autocmd bufwritepost,filewritepost *.R execute "normal `a"

"[ Pydictionary plugin ]
filetype plugin on
let g:pydiction_location = '~/.vim/ftplugin/complete-dict'

"[ syntax highlighting for various files ]
autocmd BufRead,BufNewFile *.djhtml set filetype=htmldjango.html
autocmd BufRead,BufNewFile *.R set filetype=r


