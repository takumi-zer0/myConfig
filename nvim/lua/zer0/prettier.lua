vim.api.nvim_exec([[
  autocmd FileType javascript,json,html,css,yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
]], true)

vim.g["prettier#config"] = {
    useTabs = false,
    indentWidth = 4,
    printWidth = 80,
    trailingComma = "all",
    bracketSpacing = true,
    singleQuote = true,
    jsxSingleQuote = true,
    arrowParens = "always",
    proseWrap = "never",
    endOfLine = "lf"
}
