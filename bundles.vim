set nocompatible               " be iMproved

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))
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
NeoBundle 'scrooloose/nerdcommenter'
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
NeoBundle 'arnaud-lb/vim-php-namespace'
NeoBundle 'docteurklein/vim-symfony'
NeoBundle 'vim-scripts/phpfolding.vim'
"NeoBundle 'shawncplus/phpcomplete.vim'
NeoBundle '2072/PHP-Indenting-for-VIm'
"}}}

" Programming {{{
NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'vim-scripts/OmniCppComplete'
NeoBundle 'killphi/splice.vim'
" }}}

" Syntax {{{
NeoBundle 'mutewinter/nginx.vim'
NeoBundle 'othree/html5.vim'
NeoBundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
"NeoBundle 'StanAngeloff/php.vim' " Crashing
NeoBundle 'lunaru/vim-twig'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'elzr/vim-json'
NeoBundle 'JavaScript-syntax'
NeoBundle 'jQuery'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'yuroyoro/vim-python'
NeoBundle 'scrooloose/syntastic'
" }}}
filetype plugin indent on

NeoBundleCheck
