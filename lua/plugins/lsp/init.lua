---@type LazySpec[]
local spec = {
    { import = "plugins.lsp.lspsaga" },
    { import = "plugins.lsp.nvim-lspconfig" },
    { import = "plugins.lsp.garbage-day" },
    -- TODO:
    { import = "plugins.lsp.null-ls" },

}

return spec
