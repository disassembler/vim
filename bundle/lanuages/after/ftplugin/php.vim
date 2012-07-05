 " Don't use the PHP syntax folding
setlocal foldmethod=manual
" Turn on PHP fast folds
EnableFastPHPFolds 
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
