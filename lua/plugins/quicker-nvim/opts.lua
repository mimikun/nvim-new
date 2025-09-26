---@alias quicker.TrimEnum "all" | "common" | false

---@module "quicker"
---@type quicker.SetupOptions
local opts = {
  ---@type table<string, any>
  opts = {
    buflisted = false,
    number = false,
    relativenumber = false,
    signcolumn = "auto",
    winfixheight = true,
    wrap = false,
  },
  ---@type boolean
  use_default_opts = true,
  ---@type quicker.Keymap[]
  keys = {
    --{
    --  ">",
    --  "<cmd>lua require('quicker').expand()<CR>",
    --  desc = "Expand quickfix content",
    --},
  },
  ---@type fun(bufnr: number)
  on_qf = function(bufnr)
    -- Callback function to run any custom logic or keymaps for the quickfix buffer
  end,
  ---@type quicker.SetupEditConfig
  edit = {
    enabled = true,
    ---@type boolean | "unmodified"
    autosave = "unmodified",
  },
  ---@type boolean
  constrain_cursor = true,
  ---@type quicker.SetupHighlightConfig
  highlight = {
    treesitter = true,
    lsp = true,
    load_buffers = false,
  },
  ---@type quicker.SetupFollowConfig
  follow = {
    enabled = false,
  },
  ---@type table<string, string>
  type_icons = {
    E = "󰅚 ",
    W = "󰀪 ",
    I = " ",
    N = " ",
    H = " ",
  },
  ---@type quicker.Borders
  borders = {
    vert = "┃",
    strong_header = "━",
    strong_cross = "╋",
    strong_end = "┫",
    soft_header = "╌",
    soft_cross = "╂",
    soft_end = "┨",
  },
  ---@type quicker.TrimEnum
  ---@type "all" | "common" | false
  trim_leading_whitespace = "common",
}

return opts
