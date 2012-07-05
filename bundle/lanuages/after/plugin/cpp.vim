autocmd BufNewFile,BufRead *.template set ft=cpp

ab #d #define
ab #i #include
ab #b <Space><Space><Space><Space>/**
ab #e <Space><Space><Space><Space>*/
ab #a /**
ab #s */

iab cline cout<<"\n";
iab #u using namespace std;
iab #m int main(int argc,char* argv[]) <CR>{<CR>

function! s:insert_cpp()
    let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
    execute "normal i#include <iostream> "
    execute "normal o#include <string> "
    execute "normal o#include <cstdlib> "
    execute "normal o#include <fstream> "
    execute "normal o"
    execute "normal Gousing namespace std; "
    normal kk
    endfunction

autocmd  BufNewFile *.{cpp,CPP,cc,CC} call <SID>insert_cpp()

function! s:insert_gates()
    let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
    execute "normal i#ifndef " . gatename
    execute "normal o#define " . gatename . "   "
    execute "normal Go#endif /* " . gatename . " */"
    normal kk
    endfunction

autocmd  BufNewFile *.{h} call <SID>insert_gates()

