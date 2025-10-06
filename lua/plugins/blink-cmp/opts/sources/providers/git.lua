--- @module 'blink-cmp-git'
--- @type blink-cmp-git.Options
local opts = {
  kind_icons = {
    Commit = "",
    Mention = "",
    PR = "",
    MR = "",
    Issue = "",
  },
  commit = {
    triggers = { ":" },
  },
  git_centers = {
    github = {
      issue = {
        get_token = function()
          return ""
        end,
      },
      pull_request = {
        get_token = function()
          return ""
        end,
      },
      mention = {
        get_token = function()
          return ""
        end,
        get_documentation = function(item)
          local default = require("blink-cmp-git.default.github").mention.get_documentation(item)
          default.get_token = function()
            return ""
          end
          return default
        end,
      },
    },
    gitlab = {
      issue = {
        get_token = function()
          return ""
        end,
      },
      pull_request = {
        get_token = function()
          return ""
        end,
      },
      mention = {
        get_token = function()
          return ""
        end,
        get_documentation = function(item)
          local default = require("blink-cmp-git.default.gitlab").mention.get_documentation(item)
          default.get_token = function()
            return ""
          end
          return default
        end,
      },
    },
  },
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local git = {
  name = "Git",
  -- only enable this source when filetype is gitcommit, markdown, or 'octo'
  enabled = function()
    return vim.tbl_contains({ "octo", "gitcommit", "markdown" }, vim.bo.filetype)
  end,
  module = "blink-cmp-git",
  opts = opts,
}

return git
