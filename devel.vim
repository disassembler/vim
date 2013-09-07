"
" .vimrc - Development
"
" Vim configuration file - vim editor defaults

let g:debuggerMaxDepth = 10
let g:syntastic_auto_jump = 1
let g:syntastic_phpcs_conf="--standard=Drupal" 

highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

map ,ctd :!ctags --langmap=php:.engine.inc.module.theme.php --fields=+aimS --languages=php -R
