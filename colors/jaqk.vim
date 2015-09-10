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

hi MatchParen ctermfg=Black ctermbg=14
hi Visual     ctermbg=11
hi Todo       ctermbg=14 ctermfg=Black
hi Search     ctermbg=14 ctermfg=Black
hi Pmenu      ctermbg=210 ctermfg=Black
hi PmenuSel   ctermbg=7 ctermfg=Black
hi PmenuSbar  ctermbg=11 ctermfg=Black
hi PmenuThumb cterm=reverse

" vim: sw=2
