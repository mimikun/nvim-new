---@type table
local opts = {
  extensions = {
    fzf = {
      ---@type string "smart_case" | "ignore_case" | "respect_case"
      case_mode = "smart_case",
    },
    smart_open = {
      show_scores = false,
      match_algorithm = "fzf",
    },
    ecolog = {
      shelter = {
        -- Whether to show masked values when copying to clipboard
        mask_on_copy = false,
      },
      -- Default keybindings
      mappings = {
        -- Key to copy value to clipboard
        copy_value = "<C-y>",
        -- Key to copy name to clipboard
        copy_name = "<C-n>",
        -- Key to append value to buffer
        append_value = "<C-a>",
        -- Key to append name to buffer (defaults to <CR>)
        append_name = "<CR>",
        -- Key to edit environment variable
        edit_var = "<C-e>",
      },
    },
    bibtex = {
      -- Depth for the *.bib file
      depth = 1,
      -- Custom format for citation label
      custom_formats = {},
      -- Format to use for citation label.
      -- Try to match the filetype by default, or use 'plain'
      format = "",
      -- Path to global bibliographies (placed outside of the project)
      global_files = {},
      -- Define the search keys to use in the picker
      search_keys = { "author", "year", "title" },
      -- Template for the formatted citation
      citation_format = "{{author}} ({{year}}), {{title}}.",
      -- Only use initials for the authors first name
      citation_trim_firstname = true,
      -- Max number of authors to write in the formatted citation
      -- following authors will be replaced by "et al."
      citation_max_auth = 2,
      -- Context awareness disabled by default
      context = false,
      -- Fallback to global/directory .bib files if context not found
      -- This setting has no effect if context = false
      context_fallback = true,
      -- Wrapping in the preview window is disabled by default
      wrap = false,
    },
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = { "png", "webp", "jpg", "jpeg" },
      -- find command (defaults to `fd`)
      find_cmd = "rg",
    },
    aerial = {
      col1_width = 4,
      col2_width = 30,
      format_symbol = function(symbol_path, filetype)
        if filetype == "json" or filetype == "yaml" then
          return table.concat(symbol_path, ".")
        else
          return symbol_path[#symbol_path]
        end
      end,
      ---@type "symbols" | "lines" | "both"
      show_columns = "both",
    },
  },
}

return opts
