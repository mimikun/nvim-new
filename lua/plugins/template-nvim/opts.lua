local opts = {
  temp_dir = table.concat({
    vim.fn.stdpath("config"),
    "templates",
  }, "/"),
}

return opts
