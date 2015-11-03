if exists("b:current_syntax")
  finish
endif

" Todo syntax todoHighlighting
" Author: P. Barthelemy

""" PATTERNS/REGIONS/KEYWORDS

" Prioritization
syn region todoHighPriority start="\(^\s*\)\@<=1-" end="[^\|\n]*" contains=todoPerson,todoDate
syn region todoMedPriority start="\(^\s*\)\@<=2-" end="[^\|\n]*" contains=todoPerson,todoDate
syn region todoLowPriority start="\(^\s*\)\@<=3-" end="[^\|\n]*" contains=todoPerson,todoDate

" Comment
syn region todoDesc start="|" end="$" contains=todoPerson,todoDate

" Done
syn region todoDone start="\(^\s*\)\@<=x-" end="$"

" Heading
syn region todoHeading start="^#" end="$"

" Highlight action items
syn match todoActionRequired "\[AR\]"

" Person
syn match todoPerson "@[a-z0-9\-]*"

" Date
syn match todoDate "\<\d\{1,2\}/\d\{1,2\}\>"

let b:current_syntax = "todo"

""" FORMATTING
hi def todoHighPriority		cterm=bold ctermbg=yellow
hi def todoMedPriority		cterm=bold ctermbg=lightyellow
hi def todoLowPriority		cterm=bold
hi def todoDesc			ctermfg=blue
hi def todoHeading		cterm=reverse,italic
hi def todoActionRequired	cterm=bold ctermfg=black ctermbg=red
hi def todoDone			ctermfg=grey
hi def todoPerson		ctermfg=magenta
hi def todoDate			ctermfg=magenta

set breakindent
set linebreak

" TODO: date higlighting
