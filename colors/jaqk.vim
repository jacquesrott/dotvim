" Vim color file
" Maintainer:	Jacques Rott <jacques.rott@gmail.com>
" Last Change:	2015 Sep 10

" Remove all existing highlighting and set the defaults.
hi clear

set background=light

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "jaqk"

hi MatchParen ctermfg=Black ctermbg=11
hi Visual     ctermbg=8
hi Todo       ctermbg=11 ctermfg=Black
hi Search     ctermbg=11 ctermfg=Black
hi Pmenu      ctermbg=210 ctermfg=Black
hi PmenuSel   ctermbg=7 ctermfg=Black
hi PmenuSbar  ctermbg=11 ctermfg=Black
hi PmenuThumb cterm=reverse
hi pythonSelf term=bold ctermfg=5 guifg=SlateBlue
hi pythonParameters term=bold ctermfg=5 guifg=SlateBlue
hi pythonClass term=underline ctermfg=6 guifg=DarkCyan


" vim: sw=2
