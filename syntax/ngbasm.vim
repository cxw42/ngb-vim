" Vim syntax file
" Language:           ngb assembly (https://github.com/cxw42/do-not-self-host)
" Maintainer:         Chris White <cxwembedded@gmail.com>
" Version:            0.1
" Project Repository: https://github.com/cxw42/ngb-vim
" License:            MIT
"
" Thanks to http://vim.wikia.com/wiki/Creating_your_own_syntax_files for
" guidance.

if version < 600
	finish
elseif exists("b:current_syntax")
	finish
endif

syn case match

syn match nasComment '\v(^|\s);.*$' contains=nasTodo
syn keyword nasTodo TODO FIXME XXX

syn match nasDirective '\v(^|\s)(\.include|\.output|\.data|\.const)'

syn match nasLabel '\v^\s*:[A-Za-z0-9_]+'

syn keyword nasOp nop jump gt and lit call fetch or dup ccall store xor
syn keyword nasOp drop return add shift swap eq sub zret push neq mul end
syn keyword nasOp pop lt divmod in out cjump iseof numin numout

hi def link     nasComment      Comment
hi def link     nasTodo         Todo
hi def link     nasDirective    Keyword
hi def link     nasLabel        Identifier
hi def link     nasOp           Operator

let b:current_syntax = "ngbasm"

" vi: set ts=4 sts=4 sw=4 et ai: "
