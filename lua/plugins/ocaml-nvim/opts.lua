---@type ocaml.Opts
local opts = {
  lsp = {
    auto_attach = true,
    on_attach = function(client_id, bufnr)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
    end,
  },
}

return opts
