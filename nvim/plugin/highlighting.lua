local cmd = vim.cmd                   -- execute Vim commands

-- highlight with enter seleccion and no
cmd[[
  let g:highlighting = 0
  function! Highlighting()
      if g:highlighting == 1 && @/ =~ '^\\<'.expand('<cword>').'\\>$'
          let g:highlighting = 0
          return ":silent nohlsearch\<CR>"
      endif
      let @/ = '\<'.expand('<cword>').'\>'
      let g:highlighting = 1
      return ":silent set hlsearch\<CR>"
  endfunction
  nnoremap <silent> <expr> <CR> Highlighting()
]]

-- for xd
-- au BufNewFile,BufRead *.js set filetype=javascript
-- au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
--augroup filetype javascript syntax=javascript

-- hi Normal ctermbg=NONE guibg=NONE
-- cmd[[
--   hi CursorLine guibg=#202d2a
-- ]]
