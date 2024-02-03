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
local keyset = vim.keymap.set
-- Autocomplete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
-- Make <CR> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice
keyset("i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
-- keymap.set("i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "<CR>"]], opts)

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

-- Remap <C-f> and <C-b> to scroll float windows/popups
---@diagnostic disable-next-line: redefined-local
local opts = {silent = true, nowait = true, expr = true}
keymap.set("n", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1, 1) : "<C-f>"', opts)
keymap.set("n", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0, 1) : "<C-b>"', opts)
keymap.set("i", "<C-f>", 'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1, 1)<cr>" : "<Left>"', opts)
keymap.set("i", "<C-b>", 'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0, 1)<cr>" : "<Right>"', opts)
keymap.set("v", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1, 1) : "<C-f>"', opts)
keymap.set("v", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0, 1) : "<C-b>"', opts)

---
--- telescope config
---
-- find_files
keymap.set('n', '<space>f', ':Telescope find_files<cr>', {noremap = true, silent = true})
-- live_grep
keymap.set('n', '<space>g', ':Telescope live_grep<cr>', {noremap = true, silent = true})

--
-- buffer line
--
function close_current_buffer()
    local current_buffer_id = vim.fn.bufnr("%")
    vim.schedule(function()
        vim.cmd("bd " .. current_buffer_id)
    end)
end
keymap.set('n', '<C-h>', ':bprev<cr>', {noremap = true, silent = true})
keymap.set('n', '<C-l>', ':bnext<cr>', {noremap = true, silent = true})
vim.keymap.set("n", "<C-x>", close_current_buffer)
