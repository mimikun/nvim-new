---@type string
local tsserver_locale
tsserver_locale = "en"
tsserver_locale = "ja"

---@type table
local opts = {
  --on_attach = function() ... end,
  handlers = {
    ["textDocument/publishDiagnostics"] = require("typescript-tools.api").filter_diagnostics(
      -- Ignore 'This may be converted to an async function' diagnostics.
      { 80006 }
    ),
  },
  settings = {
    ---@type boolean
    separate_diagnostic_server = true,
    ---@type string | "insert_leave" | "change"
    publish_diagnostic_on = "insert_leave",
    ---@type string|nil
    tsserver_path = nil,
    ---@type string[]
    tsserver_plugins = {
      --"@styled/typescript-styled-plugin",
    },
    ---@type table|fun(filetype: string): table
    tsserver_format_options = {
      --allowIncompleteCompletions = false,
      --allowRenameOfImportPath = false,
    },
    ---@type table|fun(filetype: string): table
    tsserver_file_preferences = {
      --includeInlayParameterNameHints = "all",
      --includeCompletionsForModuleExports = true,
      --quotePreference = "auto",
    },
    ---@type number | "auto"
    tsserver_max_memory = "auto",
    ---@type string
    tsserver_locale = tsserver_locale,
    ---@type boolean
    complete_function_calls = false,
    ---@type ("fix_all"| "add_missing_imports"| "remove_unused" | "remove_unused_imports")[]
    expose_as_code_action = {},
    ---@type boolean
    include_completions_with_insert_text = true,
    ---@type code_lens_mode | "all" | "implementations_only" | "references_only" | "off"
    code_lens = "off",
    ---@type { enable: boolean, filetypes: string[] }
    jsx_close_tag = {
      enable = false,
      filetypes = {
        "javascriptreact",
        "typescriptreact",
      },
    },
    ---@type boolean
    disable_member_code_lens = true,
  },
}

return opts
