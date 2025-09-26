---@type YaziConfig
local opts = {
  open_for_directories = false,
  open_multiple_tabs = false,
  change_neovim_cwd_on_close = false,
  ---@type YaziConfigHighlightGroups
  highlight_groups = {
    hovered_buffer = nil,
    hovered_buffer_in_same_directory = nil,
  },
  ---@type number | YaziFloatingWindowScaling
  floating_window_scaling_factor = 0.9,
  yazi_floating_window_winblend = 0,
  ---@type "none" | "rounded" | "single" | "double" | "shadow"
  yazi_floating_window_border = "rounded",
  yazi_floating_window_zindex = nil,
  ---@type fun(chosen_file: string, config: YaziConfig, state: YaziClosedState): nil
  open_file_function = function(chosen_file, config, state) end,
  --openers.open_file,
  ---@type fun(buffer: integer, config: YaziConfig, context: YaziActiveContext): nil
  set_keymappings_function = function(yazi_buffer_id, config, context) end,
  --nil,
  clipboard_register = "*",
  ---@type YaziConfigHooks
  hooks = {
    yazi_opened = function(preselected_path, yazi_buffer_id, config) end,
    yazi_closed_successfully = function(chosen_file, config, state) end,
    yazi_opened_multiple_files = function(chosen_files, config, state) end,
    --openers.open_multiple_files,
    on_yazi_ready = function(buffer, config, process_api) end,
  },
  highlight_hovered_buffers_in_same_directory = true,
  ---@type YaziConfigIntegrations
  integrations = {
    ---@type "telescope" | "snacks.picker" | fun(directory: string): nil
    grep_in_directory = function(directory)
      return "telescope"
    end,
    ---@type "telescope" | "snacks.picker" | fun(selected_files: Path[], relative_paths: string[]): nil
    grep_in_selected_files = function(selected_files)
      return "telescope"
    end,
    ---@type fun(directory: Path, selected_files?: Path[]): nil
    replace_in_directory = function(directory)
      -- limit the search to the given path
      local filter = directory:make_relative(vim.uv.cwd())
      require("grug-far").open({
        prefills = {
          paths = filter:gsub(" ", "\\ "),
        },
      })
    end,
    ---@type fun(selected_files?: Path[]): nil
    replace_in_selected_files = function(selected_files)
      ---@type string[]
      local files = {}
      for _, path in ipairs(selected_files) do
        files[#files + 1] = path:make_relative(vim.uv.cwd()):gsub(" ", "\\ ")
      end

      require("grug-far").open({
        prefills = {
          paths = table.concat(files, " "),
        },
      })
    end,
    resolve_relative_path_application = vim.uv.os_uname().sysname == "Darwin" and "grealpath" or "realpath",
    ---@type fun(args: YaziGetRelativePathImplementationArguments, default_implementation: fun(args: YaziGetRelativePathImplementationArguments): string): string
    resolve_relative_path_implementation = function(args, get_relative_path) end,
    ---@type YaziBufdeleteImpl
    bufdelete_implementation = "bundled-snacks",
    ---@type "snacks.picker" | nil
    picker_add_copy_relative_path_action = nil,
  },
  ---@type yazi.OptInFeatures
  future_features = {
    use_cwd_file = true,
    new_shell_escaping = true,
  },
  enable_mouse_support = true,
  ---@type string[] | nil
  forwarded_dds_events = {
    "nvim-cycle-buffer",
  },
}

return opts
