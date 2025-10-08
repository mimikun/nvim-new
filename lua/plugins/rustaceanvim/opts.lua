---@type boolean
local enable_nextest = vim.fn.executable("cargo-nextest") == 1

---@type rustaceanvim.Opts
local opts = {
  ---@type rustaceanvim.tools.Opts
  tools = {
    ---@type rustaceanvim.Executor
    executor = require("rustaceanvim.executors").termopen,
    --executor = require("rustaceanvim.executors").quickfix,
    --executor = require("rustaceanvim.executors").toggleterm,
    --executor = require("rustaceanvim.executors").vimux,

    ---@type rustaceanvim.Executor
    crate_test_executor = require("rustaceanvim.executors").termopen,

    ---@type boolean
    enable_nextest = enable_nextest,

    ---@type rustaceanvim.internal.code_action
    code_actions = {
      ---@type string
      group_icon = " ▶",
      ---@type boolean
      ui_select_fallback = false,
      ---@type rustaceanvim.internal.code_action.Keys
      keys = {
        ---@type string | string[]
        confirm = { "<CR>" },
        ---@type string | string[]
        quit = { "q", "<Esc>" },
      },
    },
    ---@type table
    float_win_config = {
      ---@type boolean
      auto_focus = false,
      ---@type 'horizontal' | 'vertical'
      open_split = "horizontal",
    },
    ---@class rustaceanvim.crate-graph.Config
    crate_graph = {
      ---@type string
      backend = "x11",
    },
    ---@type rustaceanvim.rustc.Config
    rustc = {
      ---@type string
      default_edition = "2021",
    },
  },
  ---@type rustaceanvim.lsp.ClientOpts
  server = {
    on_attach = function(client, bufnr)
      local tcr = require("tree_climber_rust")

      vim.api.nvim_buf_set_keymap(bufnr, "n", "s", function()
        tcr.init_selection()
      end, { noremap = true, silent = true })
      vim.api.nvim_buf_set_keymap(bufnr, "x", "s", function()
        tcr.select_incremental()
      end, { noremap = true, silent = true })
      vim.api.nvim_buf_set_keymap(bufnr, "x", "S", function()
        tcr.select_previous()
      end, { noremap = true, silent = true })
    end,
    -- XXX: I want to use a mason.nvim installation anyway
    ---@type string[] | fun():(string[]|fun(dispatchers: vim.lsp.rpc.Dispatchers): vim.lsp.rpc.PublicClient)
    --cmd = function()
    --  local mason_registry = require("mason-registry")
    --  if mason_registry.is_installed("rust-analyzer") then
    --    -- This may need to be tweaked depending on the operating system.
    --    local ra = mason_registry.get_package("rust-analyzer")
    --    local ra_filename = ra:get_receipt():get().links.bin["rust-analyzer"]
    --    return { ("%s/%s"):format(ra:get_install_path(), ra_filename or "rust-analyzer") }
    --  else
    --    -- global installation
    --    return { "rust-analyzer" }
    --  end
    --end,
    ra_multiplex = {
      ---@type string
      host = "127.0.0.1",
      ---@type integer
      port = 27631,
    },
    ---@type string
    logfile = vim.fn.tempname() .. "-rust-analyzer.log",
  },
  ---@type rustaceanvim.dap.Opts
  dap = {},
}

return opts
