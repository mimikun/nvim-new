---@type table<string, boolean|GxHandler>
local handlers = {
  plugin = true,
  github = true,
  brewfile = true,
  package_json = true,
  search = true,
  go = true,
  rust = {
    name = "rust",
    filetype = {
      "toml",
    },
    filename = "Cargo.toml",
    handle = function(mode, line, _)
      local crate = require("gx.helper").find(line, mode, "(%w+)%s-=%s")

      if crate then
        return "https://crates.io/crates/" .. crate
      end
    end,
  },
}

---@type GxHandlerOptions
local handler_options = {
  ---@type "google" | "bing", "duckduckgo" | "ecosia" | "yandex" | string
  search_engine = "google",
  --search_engine = "https://search.brave.com/search?q=", -- or you can pass in a custom search engine
  select_for_search = false,
  git_remotes = {
    "upstream",
    "origin",
  },
  git_remote_push = false,
}

---@type GxOptions
local opts = {
  open_browser_app = "os_specific",
  open_browser_args = {
    "--background",
  },
  open_callback = false,
  select_prompt = true,
  handlers = handlers,
  handler_options = handler_options,
}

return opts
