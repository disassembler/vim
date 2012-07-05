"The following line sets the smartindent mode for *.py files. It means that after typing lines 
"which start with any of the keywords in the list (ie. def, class, if, etc) the next line will
"automatically indent itself to the next level of indentation
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

