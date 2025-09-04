---@type table
local opts = {
  ---@type string "deepl" | "google"
  default_engine = "google",
  engines = {
    deepl = {
      default_source = "auto",
      -- If use DeepL Pro, Need `false`
      free_api = true,
    },
    google = {
      default_source = "auto",
      default_target = "ja",
      ---@type string "text" | "html"
      format = "text",
    },
  },
}

return opts
