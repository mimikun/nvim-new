---@type boolean
local enabled = vim.fn.has("nvim-0.10.0") == 1

---@type table
local opts = {
    lang = {
        astro = "<!-- %s -->",
        c = "// %s",
        cpp = "// %s",
        css = "/* %s */",
        cue = "// %s",
        c_sharp = "// %s",
        gleam = "// %s",
        glimmer = "{{! %s }}",
        graphql = "# %s",
        handlebars = "{{! %s }}",
        hcl = "# %s",
        html = "<!-- %s -->",
        ini = "; %s",
        javascript = {
            "// %s",
            "/* %s */",
            call_expression = "// %s",
            jsx_attribute = "// %s",
            jsx_element = "{/* %s */}",
            jsx_fragment = "{/* %s */}",
            spread_element = "// %s",
            statement_block = "// %s",
        },
        -- langs can have multiple commentstrings
        lua = { "-- %s", "--- %s" },
        php = "// %s",
        rego = "# %s",
        rescript = "// %s",
        ruby = "# %s",
        sql = "-- %s",
        svelte = "<!-- %s -->",
        terraform = "# %s",
        tsx = {
            -- default commentstring when no treesitter node matches
            "// %s",
            -- will be used for uncommenting
            "/* %s */",
            -- specific commentstring for call_expression
            call_expression = "// %s",
            jsx_attribute = "// %s",
            jsx_element = "{/* %s */}",
            jsx_fragment = "{/* %s */}",
            spread_element = "// %s",
            statement_block = "// %s",
        },
        twig = "{# %s #}",
        typescript = "// %s",
        vim = '" %s',
        vue = "<!-- %s -->",
    },
}

---@type LazySpec
local spec = {
    "folke/ts-comments.nvim",
    --lazy = false,
    enabled = enabled,
    event = "VeryLazy",
    opts = opts,
    --cond = false,
}

return spec
