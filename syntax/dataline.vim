""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Dataline Syntax Highlighter
""
"" v0.1.0
"" copyright (c) 2019-2020, Pierre-Emmanuel Lévesque
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists("b:current_syntax")
  finish
endif

synt match datalinePoint '\v(^\s*)@<=(\.\d+|(0|[1-9]\d*)(\.\d*)?)(\s|$)@='

hi def link datalinePoint number

let b:current_syntax = "dataline"
