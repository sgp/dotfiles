" Vim syntax file
" Language:	Python coverage file
" Maintainer:	Tim Gerla <http://www.rpath.com>
" Updated:	2006-08-04
"
syntax clear
runtime! syntax/python.vim

syn match   uncoveredLine       "^!.*"

if version >= 508 || !exists("did_python_syn_inits")
  if version <= 508
   let did_python_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink uncoveredLine          Error
  delcommand HiLink
endif

let b:current_syntax = "cover"

" vim: ts=8
