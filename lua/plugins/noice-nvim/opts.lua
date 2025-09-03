---@type NoiceConfig
local opts = {
  lsp = {
    progress = {
      throttle = 1000 / 30, -- frequency to update lsp progress message
    },
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
  ---@type NoicePresets
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = true,
    lsp_doc_border = false, -- add a border to hover docs and signature help
    cmdline_output_to_split = false, -- send the output of a command you executed in the cmdline to a split
  },
  throttle = 1000 / 30, -- how frequently does Noice need to check for ui updates? This has no effect when in blocking mode.
  log = vim.fn.stdpath("state") .. "/noice.log",
  log_max_size = 1024 * 1024 * 2, -- 10MB
}

return opts
