" Vim indent file
" Language:           ngb assembly (https://github.com/cxw42/do-not-self-host)
" Maintainer:         Chris White <cxwembedded@gmail.com>
" Version:            0.1
" Project Repository: https://github.com/cxw42/ngb-vim
" License:            MIT

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
   finish
endif
let b:did_indent = 1

setlocal autoindent
