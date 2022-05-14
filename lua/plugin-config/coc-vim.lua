
vim.cmd([[
  let g:coc_global_extensions = [
    \'coc-json', 
    \'coc-git', 
    \'coc-clangd', 
    \'coc-cmake', 
    \'coc-clang-format-style-options'
    \]

  " Highlight the symbol and its references when holding the cursor.
  autocmd CursorHold * silent call CocActionAsync('highlight')
  command! -nargs=0 Format :call CocActionAsync('format')
]])
