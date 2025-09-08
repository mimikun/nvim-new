---@type LazySpec
local spec = {
  "mzlogin/vim-markdown-toc",
  --lazy = false,
  cmd = require("plugins.vim-markdown-toc.cmds"),
  config = function()
    vim.g.vmt_auto_update_on_save = 1
    vim.g.vmt_dont_insert_fence = 0
    vim.g.vmt_dont_insert_fence = 0
    vim.g.vmt_fence_text = "vim-markdown-toc"
    vim.g.vmt_fence_closing_text = vim.g.vmt_fence_text
    vim.g.vmt_fence_hidden_markdown_style = ""
    vim.g.vmt_cycle_list_item_markers = 0
    vim.g.vmt_list_item_char = "*"
    vim.g.vmt_include_headings_before = 0
    vim.g.vmt_list_indent_text = ""
    vim.g.vmt_link = 1
    vim.g.vmt_min_level = 1
    vim.g.vmt_max_level = 6
    vim.g.vmt_list_flag_min_width = nil
  end,
  --cond = false,
  --enabled = false,
}

return spec
