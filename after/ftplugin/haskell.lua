-- haskell-language-server relies heavily on codeLenses, so auto-refresh (see advanced configuration) is enabled by default

vim.keymap.set("n", "<space>cl", vim.lsp.codelens.run, {
  noremap = true,
  silent = true,
  buffer = vim.api.nvim_get_current_buf(),
})

-- Hoogle search for the type signature of the definition under the cursor
vim.keymap.set("n", "<space>hs", require("haskell-tools").hoogle.hoogle_signature, {
  noremap = true,
  silent = true,
  buffer = vim.api.nvim_get_current_buf(),
})

-- Evaluate all code snippets
vim.keymap.set("n", "<space>ea", require("haskell-tools").lsp.buf_eval_all, {
  noremap = true,
  silent = true,
  buffer = vim.api.nvim_get_current_buf(),
})

-- Toggle a GHCi repl for the current package
vim.keymap.set("n", "<leader>rr", require("haskell-tools").repl.toggle, {
  noremap = true,
  silent = true,
  buffer = vim.api.nvim_get_current_buf(),
})

-- Toggle a GHCi repl for the current buffer
vim.keymap.set("n", "<leader>rf", function()
  require("haskell-tools").repl.toggle(vim.api.nvim_buf_get_name(0))
end, {
  noremap = true,
  silent = true,
  buffer = vim.api.nvim_get_current_buf(),
})

vim.keymap.set("n", "<leader>rq", require("haskell-tools").repl.quit, {
  noremap = true,
  silent = true,
  buffer = vim.api.nvim_get_current_buf(),
})

vim.keymap.set("n", "<space>a", "<Plug>HaskellHoverAction")
