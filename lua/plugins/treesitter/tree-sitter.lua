local global = require("config.global")

---@type boolean
local is_human_rights = global.is_human_rights

---@type table
local treesitter_parsers = {
    "bash",
    "c",
    "c_sharp",
    "cmake",
    "cpp",
    "css",
    "djot",
    "dockerfile",
    "fish",
    "git_config",
    "git_rebase",
    "gitattributes",
    "gitcommit",
    "gitignore",
    "go",
    "gomod",
    "gosum",
    "gowork",
    "graphql",
    "html",
    "ini",
    "java",
    "javascript",
    "jq",
    "jsdoc",
    "json",
    "jsonc",
    "json5",
    "kdl",
    "latex",
    "lua",
    "luadoc",
    "luap",
    "luau",
    "make",
    "markdown",
    "markdown_inline",
    "ninja",
    "nix",
    "python",
    "regex",
    "rst",
    "ruby",
    "rust",
    "scala",
    "scss",
    "sql",
    "svelte",
    "swift",
    "toml",
    "tsx",
    "typescript",
    "vim",
    "vimdoc",
    "vue",
    "yaml",
    "zig",
}

---@type table
local dependencies = {
    "windwp/nvim-ts-autotag",
    "IndianBoy42/tree-sitter-just",
    "LhKipp/nvim-nu",
    "Fymyte/tree-sitter-rasi",
    "mimikun/tree-sitter-PowerShell",
    "charmbracelet/tree-sitter-vhs",
    "RRethy/nvim-treesitter-textsubjects",
}

---@type LazySpec
local spec = {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    --lazy = false,
    event = "VeryLazy",
    dependencies = dependencies,
    config = function()
        local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

        local need_parsers = treesitter_parsers

        -- Linux or WSL
        if global.is_linux or global.is_wsl then
            table.insert(need_parsers, "ocaml")
            table.insert(need_parsers, "ocaml_interface")
        end

        require("nvim-treesitter.configs").setup({
            highlight = {
                enable = true,
                disable = {},
            },
            ensure_installed = need_parsers,
            sync_install = not is_human_rights,
            textsubjects = {
                enable = true,
                prev_selection = ",",
                keymaps = {
                    ["."] = "textsubjects-smart",
                    [";"] = "textsubjects-container-outer",
                    ["i;"] = {
                        "textsubjects-container-inner",
                        desc = "Select inside containers (classes, functions, etc.)",
                    },
                },
            },
        })

        parser_config.powershell = {
            install_info = {
                url = "https://github.com/mimikun/tree-sitter-PowerShell",
                files = { "src/parser.c" },
                branch = "test",
            },
            filetype = { "ps1", "psd1" },
        }

        parser_config.rasi = {
            install_info = {
                url = "https://github.com/Fymyte/tree-sitter-rasi",
                files = { "src/parser.c" },
                branch = "main",
            },
            filetype = { "rasi" },
        }

        parser_config.just = {
            install_info = {
                url = "https://github.com/IndianBoy42/tree-sitter-just",
                files = { "src/parser.c", "src/scanner.cc" },
                branch = "main",
            },
            filetype = { "just", "Justfile" },
            maintainers = { "@IndianBoy42" },
        }

        parser_config.vhs = {
            install_info = {
                url = "https://github.com/charmbracelet/tree-sitter-vhs",
                files = { "src/parser.c" },
                branch = "main",
            },
            filetype = { "tape" },
        }

        require("nu").setup({})
        require("nvim-ts-autotag").setup({})
    end,
    --cond = false,
}

return spec
