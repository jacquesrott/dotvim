" Vim syntax file
" Language:	JSON
" Maintainer:	Jacques Rott <jacques.rott@gmail.com>
" Last Change:	2015-10-03

syn match jsonIdentifierMatch /\("\w.*"\):/ contains=jsonIdentifier
syn match jsonEmptyString /""/

hi def link jsonKeyword		Function
hi def link jsonBoolean         SpecialKey
hi def link jsonNull            SpecialKey
hi def link jsonQuote           String
hi def link jsonIdentifier      Identifier
hi def link jsonIdentifierMatch Identifier
hi def link jsonEmptyString     String
hi jsonBraces ctermfg=7

let b:current_syntax = "json"
" vim: sw=2
