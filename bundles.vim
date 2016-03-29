set nocompatible               " be iMproved

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Themes {{{
NeoBundle 'altercation/vim-colors-solarized'
" }}}

" Edit {{{
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tmhedberg/matchit'
NeoBundle 'gregsexton/MatchTag'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'vim-scripts/YankRing.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'godlygeek/tabular'
" }}}

" Autocomplete {{{
NeoBundle 'Valloric/YouCompleteMe'
"NeoBundle 'Shougo/neocomplete.vim'
"NeoBundle 'asmod3us/neocomplete-ultisnips'
"NeoBundle 'Shougo/neosnippet'
"NeoBundle 'Shougo/neocomplcache.vim'
"NeoBundle 'garbas/vim-snipmate'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'disassembler/vim-snippets'
" }}}

" Web - PHP/HTML/JS/CSS {{{
NeoBundle 'majutsushi/tagbar'
"NeoBundle 'vim-scripts/XDebug-DBGp-client-for-PHP'
NeoBundle 'joonty/vdebug'
NeoBundle 'arnaud-lb/vim-php-namespace'
NeoBundle 'docteurklein/vim-symfony'
"NeoBundle 'vim-scripts/phpfolding.vim'
"NeoBundle 'shawncplus/phpcomplete.vim'
NeoBundle '2072/PHP-Indenting-for-VIm'
"}}}

" Programming {{{
NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'vim-scripts/OmniCppComplete'
NeoBundle 'sjl/splice.vim'
" }}}

" Syntax {{{
NeoBundle 'mutewinter/nginx.vim'
"NeoBundle 'MarcWeber/vim-addon-nix'
NeoBundle 'othree/html5.vim'
NeoBundle 'cakebaker/scss-syntax.vim'
"NeoBundle 'StanAngeloff/php.vim' " Crashing
NeoBundle 'lunaru/vim-twig'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'elzr/vim-json'
NeoBundle 'JavaScript-syntax'
NeoBundle 'jQuery'
NeoBundle 'tpope/vim-markdown'
"NeoBundle 'vimwiki/vimwiki'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'yuroyoro/vim-python'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'rodjek/vim-puppet'
NeoBundle 'fatih/vim-go'
" }}}

call neobundle#end()
filetype plugin indent on

NeoBundleCheck

