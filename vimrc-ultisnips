"{{{
let g:UltiSnips                          = {}
let g:UltiSnips.ExpandTrigger            = '<tab>'
let g:UltiSnips.JumpForwardTrigger       = '<tab>'
let g:UltiSnips.JumpBackwardTrigger      = '<S-tab>'
"let g:UltiSnips.always_use_first_snippet = 1
"let g:UltiSnipsSnippetsDir               = '~/.vim/bundle/ultisnips-snippets'

function! g:UltiSnips_Complete()
   call UltiSnips_ExpandSnippet()
   if g:ulti_expand_res == 0
       if pumvisible()
           return "\<C-N>"
       else
           call UltiSnips_JumpForwards()
           if g:ulti_jump_forward_res == 0
               return "\<tab>"
           endif
       endif
   endif
   return ""
endfunction

au BufEnter * exec "silent inoremap <silent> " . g:UltiSnips.ExpandTrigger . "<C-R>=g:UltiSnips_Complete()<CR>"

let g:UltiSnips.ListSnippets="<C-L>"
let g:UltiSnipsSnippetDirectories = ["UltiSnips"]
"}}}
