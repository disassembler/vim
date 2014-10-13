"
" .vimrc - Development
"
" Vim configuration file - vim editor defaults

let g:debuggerMaxDepth = 10
let g:syntastic_auto_jump = 1
let g:syntastic_phpcs_conf="--standard=Drupal"
let g:syntastic_puppet_puppetlint_args="--no-80chars-check --no-class_inherits_from_params_class-check"

highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

map ,ctd :!ctags --langmap=php:.engine.inc.module.theme.php --fields=+aimS --languages=php -R
