autocmd BufNewFile,BufRead *.template set ft=cpp

ab #d #define
ab #i #include
ab #b <Tab>/**
ab #e <Tab>*/
ab #a /**
ab #s */

iab cline printf("\n");
iab #u using namespace std;
iab #m int main(int argc,char* argv[]) <CR>{<CR>

function! s:insert_c()
    let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
    execute "normal i#include <stdio.h> "
    execute "normal o#include <stdlib.h> "
    execute "normal o"
    execute "normal oint main(int argc,char* argv[]) "
    execute "normal o{ "
    normal kk
    endfunction

autocmd  BufNewFile *.{c,C} call <SID>insert_c()
