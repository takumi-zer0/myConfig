-- SETTINGS START
-- --------------------------------------------------------

-- COC-VIM TAB SETTINGS START
-- Use tab for trigger completion with characters ahead and navigate.
-- NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
-- other plugin before putting this into your config.
vim.api.nvim_set_keymap('i', '<TAB>', 'pumvisible() ? "<C-n>" : v:lua.check_back_space() ? "<TAB>" : coc#refresh()',
    { expr = true, silent = true })
vim.api.nvim_set_keymap('i', '<S-TAB>', 'pumvisible() ? "<C-p>" : "<C-h>"', { expr = true, silent = true })

function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.')[col] == # ' '
end

-- Use <c-space> to trigger completion.
if vim.fn.has('nvim') == 1 then
    vim.api.nvim_set_keymap('i', '<C-Space>', 'coc#refresh()', { expr = true, silent = true })
else
    vim.api.nvim_set_keymap('i', '<C-@>', 'coc#refresh()', { expr = true, silent = true })
end

-- Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
-- position. Coc only does snippet and additional edit on confirm.
-- <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if vim.fn.exists('*complete_info') == 1 then
    vim.api.nvim_set_keymap('i', '<cr>', 'complete_info()["selected"] != "-1" ? "<C-y>" : "<C-g>u<CR>"',
        { expr = true, silent = true })
else
    vim.api.nvim_set_keymap('i', '<cr>', 'pumvisible() ? "<C-y>" : "<C-g>u<CR>"', { expr = true, silent = true })
end
-- COC-VIM TAB SETTINGS END
-- --------------------------------------------------------

-- SETTINGS END
