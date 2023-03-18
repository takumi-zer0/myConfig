vim.wo.foldmethod = 'expr'
vim.wo.foldtext = 'nvim_treesitter#foldtext()'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

vim.g.pretty_fold_symbols = {
    '⌘',
    '⌃',
    '⌥',
    '⇧',
    '≡',
    '≣',
}



vim.g.pretty_fold_colors = {
    '#61afef',
    '#98c379',
    '#e5c07b',
    '#56b6c2',
    '#c678dd',
    '#be5046',
}

vim.opt.foldenable = false
vim.cmd("au FileType NvimTree setlocal foldenable=false")

vim.opt.fillchars = {
    vert = "▕", -- alternatives │
    fold = " ",
    eob = " ",  -- suppress ~ at EndOfBuffer
    diff = "╱", -- alternatives = ⣿ ░ ─
    msgsep = "‾",
    foldopen = "▾",
    foldsep = "│",
    foldclose = "▸",
}
