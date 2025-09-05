---@type EcologConfig
local opts = {
  path = vim.fn.getcwd(),
  shelter = {
    configuration = {
      mask_char = "*",
      --mask_char = "•"  -- Use dots
      --mask_char = "█"  -- Use blocks
    },
    modules = {
      cmp = true,
      files = true,
      telescope = true,
      telescope_previewer = true,
      snacks = true,
      snacks_previewer = true,
    },
  },
  integrations = {
    lspsaga = true,
    blink_cmp = true,
    statusline = {
      hidden_mode = true,
      icons = {
        enabled = true,
        --env = "E",
        --shelter = "S",
        env = "🌲",
        shelter = "🛡️",
      },
      highlights = {
        env_file = "Directory",
        vars_count = "Number",
      },
    },
    snacks = true,
    --secret_managers = {
    --  aws = false,
    --  vault = false,
    --},
  },
  vim_env = false,
  sort_var_fn = function(a, b)
    if a.source == "shell" and b.source ~= "shell" then
      return false
    end
    if a.source ~= "shell" and b.source == "shell" then
      return true
    end

    return a.name < b.name
  end,
  custom_types = {},
  preferred_environment = "development",
  --preferred_environment = 'local',
  provider_patterns = {
    extract = true,
    cmp = true,
  },
  load_shell = {
    enabled = true,
    filter = function(key, value)
      return key:match("^(PATH|HOME|USER)$") ~= nil
    end,
    transform = function(key, value)
      return "[shell] " .. value
    end,
  },
  interpolation = {
    enabled = true,
    max_iterations = 10,
    fail_on_cmd_error = false,
    disable_security = false,
    features = {
      commands = false,
    },
  },
  monorepo = {
    enabled = true,
    auto_switch = true,
    notify_on_switch = false,
  },
}

return opts
