---@type LazySpec
local spec = {
  "outerLeitmotiv/nvim-ansible-vault",
  --lazy = false,
  ft = { "yaml.ansible" },
  cmd = require("plugins.nvim-ansible-vault.cmds"),
  --event = "VeryLazy",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "yaml.ansible",
      callback = function()
        vim.keymap.set("n", "<leader>vd", ":VaultDecrypt<CR>", { buffer = true, desc = "Vault Decrypt" })
        vim.keymap.set("n", "<leader>ve", ":VaultEncrypt<CR>", { buffer = true, desc = "Vault Encrypt" })
      end,
    })
  end,
  cond = false,
  enabled = false,
}

return spec
