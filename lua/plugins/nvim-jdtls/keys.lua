---@type LazyKeysSpec[]
local keys = {
  {
    "<A-o>",
    "<Cmd>lua require'jdtls'.organize_imports()<CR>",
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "crv",
    "<Cmd>lua require('jdtls').extract_variable()<CR>",
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "crv",
    "<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>",
    mode = "v",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "crc",
    "<Cmd>lua require('jdtls').extract_constant()<CR>",
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "crc",
    "<Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>",
    mode = "v",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "crm",
    "<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>",
    mode = "v",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "<leader>df",
    "<Cmd>lua require'jdtls'.test_class()<CR>",
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "<leader>dn",
    "<Cmd>lua require'jdtls'.test_nearest_method()<CR>",
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
}

return keys
