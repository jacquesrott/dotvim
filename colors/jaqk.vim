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

hi MatchParen ctermfg=233 ctermbg=11
hi Visual     ctermbg=8
hi Todo       ctermbg=11 ctermfg=233
hi Search     ctermbg=11 ctermfg=233
hi VertSplit  ctermbg=238 ctermfg=238
hi Pmenu      ctermbg=210 ctermfg=233
hi PmenuSel   ctermbg=7 ctermfg=233
hi PmenuSbar  ctermbg=11 ctermfg=233
hi PmenuThumb cterm=reverse
hi pythonSelf term=bold ctermfg=5 guifg=SlateBlue
hi pythonParameters term=bold ctermfg=5 guifg=SlateBlue
hi pythonClass term=underline ctermfg=6 guifg=DarkCyan
hi SpellBad   ctermbg=224 ctermfg=233 term=reverse
hi SpellCap   ctermbg=81 ctermfg=233 term=reverse
hi SpellRare  ctermbg=225 ctermfg=233 term=reverse
hi SpellLocal ctermbg=14 ctermfg=233 term=underline
hi LineNr     ctermfg=235
hi NonText    ctermfg=234
hi Title      ctermfg=6
hi SignColumn ctermbg=233 ctermfg=255


" vim: sw=2
