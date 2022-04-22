--set to 1, nvim will open the preview window after entering the markdown buffer
vim.g.mkdp_auto_start = 0

--set to 1, the nvim will auto close current preview window when change
--from markdown buffer to another buffer
vim.g.mkdp_auto_close = 1

--default 0 is auto refresh markdown as you edit or move the cursor
vim.g.mkdp_refresh_slow = 0

--set to 1, the MarkdownPreview command can be use for all files,
--by default it can be use in markdown file
vim.g.mkdp_command_for_global = 0

--preview page title
--${name} will be replace with the file name
vim.cmd([[
    let g:mkdp_page_title = '「${name}」'
]])

vim.cmd([[
    let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }
]])

--recognized filetypes
--these filetypes will have MarkdownPreview... commands
vim.cmd([[
    let g:mkdp_filetypes = ['markdown']
]])
