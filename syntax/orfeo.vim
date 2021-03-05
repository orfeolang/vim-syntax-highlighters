""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Orfeo Syntax Highlighter
""
"" v0.1.0
"" copyright (c) 2019-2020, Pierre-Emmanuel Lévesque
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists("b:current_syntax")
  finish
endif

" synt match orfeoParenthesisOpen   '\v(^|\(|\s|\^)@<=\((\.)@!'
" synt match orfeoParenthesisClose  '\v(\^)@<!\)(\.|\)|\s|$)@='
synt match orfeoDuration            '\v(^|\(|\s)@<=:(\=|(\.\d+|(0|[1-9]\d*)(\.\d*)?)(/(0?\.0*[1-9]\d*|[1-9]\d*(\.\d*)?))?)(\)|\s|$)@='
synt match orfeoDatumQuoted         '\v(^|\(|\s|\^)@<="[^"]*"(\.|\)|\s|$)@='
synt match orfeoDatumUnquoted       '\v(^|\(|\s|\^)@<=[._a-zA-Z0-9/\[\]♮♭♯-]*[_a-zA-Z0-9/\[\]♮♭♯-](\.|\)|\s|$)@='
synt match orfeoRhythmFlags         '\v(^|\(|\s)@<=\^+(\(|"[^"]*"|[._a-zA-Z0-9/\[\]♮♭♯-]*[_a-zA-Z0-9/\[\]♮♭♯-])@='
synt match orfeoRhythmDots          '\v(\)|"[^"]*"|[._a-zA-Z0-9/\[\]♮♭♯-]*[_a-zA-Z0-9/\[\]♮♭♯-])@<=\.+(\)|\s|$)@='

" hi def link orfeoParenthesisOpen  delimiter
" hi def link orfeoParenthesisClose delimiter
  "" orfeoDuration should semantically be 'number', but 'number' and 'string' are
  "" both in the 'constant' meta category meaning they get colored similarly.
  "" To differentiate the color of Duration from Datum, we use 'identifier' for Duration.
hi def link orfeoDuration           identifier
hi def link orfeoDatumQuoted        string
hi def link orfeoDatumUnquoted      string
hi def link orfeoRhythmFlags        operator
hi def link orfeoRhythmDots         operator

let b:current_syntax = "orfeo"
