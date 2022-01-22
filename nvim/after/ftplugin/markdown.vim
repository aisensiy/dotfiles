set wrap

function! MarkdownFormat()
  silent !autocorrect --fix '%:p'
  let view = winsaveview()
  silent edit
  call winrestview(view)
  redraw!
endfunction

augroup markdownFormat
  autocmd!
  autocmd BufWritePost * if &filetype ==# 'markdown' | call MarkdownFormat() | endif
augroup END
