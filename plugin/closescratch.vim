" vim-closescratch - Close the scratch window automatically
" Maintainer:   Jer Wilson <superjer@superjer.com>
" URL:          https://github.com/superjer/closescratch
" Version:      0.1
"
" License:
" Copyright Jer Wilson. Distributed under the same terms as Vim itself.
" See :help license
"
" Installation:
" Put this file in your ~/.vim/plugin dir or, if you use a bundler, clone
" https://github.com/superjer/vim-closescratch to your bundles dir.
"
" Description:

if exists("g:loaded_closescratch")
  finish
endif
let g:loaded_closescratch = 1

" Close the scratch window (if open) when exiting insert mode (but not for the
" command window (or any vimscript buffer really))
autocmd InsertLeave * if pumvisible() == 0|silent! pclose|endif

