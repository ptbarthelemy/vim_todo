if exists("b:current_syntax")
  finish
endif

" Todo syntax todoHighlighting
" Author: P. Barthelemy

""" PATTERNS/REGIONS/KEYWORDS

" Prioritization
syn region todoHighPriority start="\(^\s*\)\@<=1-" end="[^\|\n]*" contains=todoPerson,todoDate,todoTimeEstimate,todoLink,todoTag,todoTODO
syn region todoMedPriority start="\(^\s*\)\@<=2-" end="[^\|\n]*" contains=todoPerson,todoDate,todoTimeEstimate,todoLink,todoTag,todoTODO
syn region todoLowPriority start="\(^\s*\)\@<=3-" end="[^\|\n]*" contains=todoPerson,todoDate,todoTimeEstimate,todoLink,todoTag,todoTODO

" Comment
syn region todoDesc start="|" end="$" contains=todoPerson,todoDate,todoTimeEstimate,todoLink,todoTODO,todoCode

" Done
syn region todoDone start="\(^\s*\)\@<=x-" end="$" contains=todoPerson,todoDate,todoLink,todoCode

" Waiting
syn region todoWaiting start="\(^\s*\)\@<=\.\.\.-" end="$"

" Hyperlink
syn match todoLink "https\?://[^ )]*"

" Heading
syn region todoHeading start="^#" end="$"

" Highlight tags
syn match todoTag "\[[^\]]*\]"

" Code tags
syn match todoCode "`[^`]*`"

" Highlight time estimates
syn match todoTimeEstimate "\[\(minutes\|mins\|hours\|hrs\|days\|weeks\).*\]"

" Highlight action items
syn match todoTODO "\(\[AR\]\|TODO\)"

" Person
syn match todoPerson "@[a-z0-9\-]*"

" Date
syn match todoDate "\<\d\{1,2\}/\d\{1,2\}\>"

let b:current_syntax = "todo"

""" FORMATTING
hi def todoHeading		    ctermbg=darkgrey
hi def todoHighPriority		ctermbg=lightblue
hi def todoMedPriority		ctermbg=blue
hi def todoLowPriority		ctermbg=darkblue
hi def todoTODO         	cterm=bold ctermfg=black ctermbg=red
hi def todoTag              ctermbg=grey
hi def todoCode             ctermfg=grey
hi def todoTimeEstimate     ctermbg=193
hi def todoDesc			    ctermfg=lightgrey
hi def todoDone			    ctermfg=lightgrey
hi def todoWaiting          ctermfg=darkgrey
hi def todoPerson		    ctermfg=magenta
hi def todoDate			    ctermfg=magenta
hi def todoLink             ctermfg=blue

set breakindent
set linebreak

""" Spacing
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab
