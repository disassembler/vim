" Drupal *.module and *.install files.
augroup module
  autocmd BufRead,BufNewFile *.module set filetype=php
  autocmd BufRead,BufNewFile *.install set filetype=php
  autocmd BufRead,BufNewFile *.test set filetype=php
  autocmd BufRead,BufNewFile *.inc set filetype=php
  autocmd BufRead,BufNewFile *.profile set filetype=php
  autocmd BufRead,BufNewFile *.view set filetype=php
augroup END

" Generic web stuff
autocmd BufNewFile,BufRead *.tmpl set ft=html
autocmd BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
autocmd BufNewFile,BufRead *.pt set ft=html
autocmd BufNewFile,BufRead *.css.dtml set ft=css

" smarty templating engine
autocmd Filetype smarty exec('set dictionary=~/.vim/syntax/smarty.vim')
autocmd Filetype smarty set complete+=k
autocmd BufNewFile,BufRead *.tpl set ft=smarty
autocmd Filetype smarty set complete+=k


