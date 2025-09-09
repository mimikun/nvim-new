if vim.loader then
  vim.loader.enable()
end

vim.opt.termguicolors = true
vim.opt.mouse = "a"
vim.opt.fileformats = {
  "unix",
  "dos",
  "mac",
}
vim.opt.fileencodings = {
  "utf-8",
  "cp932",
  "ucs-bombs",
  "euc-jp",
  "ucs-bom",
  "default",
  "latin1",
}
vim.opt.number = true
vim.opt.relativenumber = true
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.opt.clipboard = "unnamedplus"
vim.g.mapleader = " "

require("config.lazy")

vim.cmd.colorscheme("tokyonight")

vim.keymap.set("n", "<Esc><Esc>", function()
  vim.cmd("nohlsearch")
end, { silent = true })
