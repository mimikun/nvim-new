---@module "blink-ripgrep"
---@type blink-ripgrep.Options
local opts = {
  prefix_min_len = 5,
  project_root_marker = { ".git", "package.json", ".root" },
  fallback_to_regex_highlighting = true,
  toggles = {
    -- The keymap to toggle the plugin on and off from blink
    -- completion results. Example: "<leader>tg" ("toggle grep")
    on_off = nil,
  },

  backend = {
    ---@type "ripgrep" | "gitgrep" | "gitgrep-or-ripgrep"
    use = "ripgrep",
    ripgrep = {
      context_size = 5,
      -- The maximum file size of a file that ripgrep should include in its search.
      -- Useful when your project contains large files that might cause performance issues.
      -- Examples:
      -- "1024" (bytes by default), "200K", "1M", "1G", which will exclude files larger than that size.
      max_filesize = "1M",

      -- The casing to use for the search in a format that ripgrep accepts.
      -- Defaults to "--ignore-case". See `rg --help` for
      -- all the available options ripgrep supports, but you can try
      -- "--case-sensitive" or "--smart-case".
      search_casing = "--ignore-case",
    },
  },
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local ripgrep = {
  name = "Ripgrep",
  enabled = true,
  module = "blink-ripgrep",
  opts = opts,
  transform_items = function(_, items)
    for _, item in ipairs(items) do
      -- example: append a description to easily distinguish rg results
      item.labelDetails = {
        description = "(rg)",
      }
    end
    return items
  end,
}

return ripgrep
