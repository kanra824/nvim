local keymap = vim.keymap

-- 画面分割
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- アクティブウィンドウの移動
keymap.set('n', 'sh', '<C-w>h')
keymap.set('n', 'sk', '<C-w>k')
keymap.set('n', 'sj', '<C-w>j')
keymap.set('n', 'sl', '<C-w>l')

--
-- terminal
--
keymap.set('n', 'tt', '<cmd>belowright new<CR><cmd>terminal<CR>', {noremap = true, silent = true})
vim.api.nvim_create_autocmd('TermOpen', {
    command = ":startinsert",
})
vim.api.nvim_create_autocmd('TermOpen', {
    command = "setlocal norelativenumber",
})
vim.api.nvim_create_autocmd('TermOpen', {
    command = "setlocal nonumber",
})
keymap.set('t', '<ESC>', '<C-\\><C-n>', {noremap = true})

--
-- coc setting
--
--ノーマルモードで
--スペース2回でCocList
-- nmap <silent> <space><space> :<C-u>CocList<cr>
keymap.set('n', '<space><space>', ':<C-u>CocList<cr>', {silent = true})
--スペースhでHover
-- nmap <silent> <space>h :<C-u>call CocAction('doHover')<cr>
keymap.set('n', '<space>h', ":<C-u>call CocAction('doHover')<cr>", {silent = true})
--スペースdfでDefinition
-- nmap <silent> <space>df <Plug>(coc-definition)
keymap.set('n', '<space>df', '<Plug>(coc-definition)', {silent = true})
--スペースrfでReferences
-- nmap <silent> <space>rf <Plug>(coc-references)
keymap.set('n', '<space>rf', '<Plug>(coc-references)', {silent = true})
--スペースrnでRename
-- nmap <silent> <space>rn <Plug>(coc-rename)
keymap.set('n', '<space>ren', '<Plug>(coc-rename)', {silent = true})
--スペースfmtでFormat
-- nmap <silent> <space>fmt <Plug>(coc-format)
keymap.set('n', '<space>fmt', '<Plug>(coc-format)', {silent = true})
