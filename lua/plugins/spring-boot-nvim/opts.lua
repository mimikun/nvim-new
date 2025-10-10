---@type bootls.Config
local opts = {
  --- The path to the language server jar path.
  ---@type string
  ls_path = nil,
  --- The exploded language server jar data.
  ---@type boolean
  exploded_ls_jar_data = false,
  --- The path to the java command.
  ---@type string
  java_cmd = nil,
  --- The path to the spring boot ls log file.
  ---@type string | function
  log_file = nil,
  --- The language server configuration.
  ---@type vim.lsp.ClientConfig
  server = {
    cmd = {},
  },
  --- autimatically setup autocmd in neovim
  ---@type boolean
  autocmd = true,
}

return opts
