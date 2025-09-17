---@alias lazydev.Library {path:string, words:string[], mods:string[], files:string[]}
---@alias lazydev.Library.spec string|{path:string, words?:string[], mods?:string[], files?:string[]}

---@type lazydev.Config
local opts = {
  ---@type lazydev.Library.spec[]
  library = {
    --"~/projects/my-awesome-lib",
    "lazy.nvim",
    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
    { path = "LazyVim", words = { "LazyVim" } },
    { path = "wezterm-types", mods = { "wezterm" } },
    { path = "xmake-luals-addon/library", files = { "xmake.lua" } },
  },
}

return opts
