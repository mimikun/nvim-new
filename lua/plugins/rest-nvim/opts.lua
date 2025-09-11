---@type rest.Opts
local opts = {
  request = {
    skip_ssl_verification = false,
  },
  clients = {
    curl = {
      opts = {
        set_compressed = false,
      },
    },
  },
  cookies = {
    path = vim.fs.joinpath(vim.fn.stdpath("data"), "rest-nvim.cookies"),
  },
  ui = {
    winbar = true,
  },
}

return opts
