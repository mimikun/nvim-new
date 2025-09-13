# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a highly modular Neovim configuration using lazy.nvim for plugin management. The configuration contains 171+ plugins organized in a sophisticated modular architecture.

## Commands

### Task Management (via Taskfile.yml)
```bash
# List all available tasks
task

# Daily development workflow
task morning-routine    # Runs clean-fetch, delete-branch, pull, patch-branch

# Git operations
task pull              # git pull
task push              # git push to origin and codeberg
task clean-fetch       # git fetch with cleanup
task patch-branch      # Create patch-YYYYMMDD branch
task delete-branch     # Delete all patch-* branches
task switch-master     # Switch to master branch
```

### Neovim Operations
```bash
# Start Neovim with this configuration
nvim

# Check configuration health
nvim --headless "+checkhealth" +qa

# Plugin management (within Neovim)
:Lazy                  # Open lazy.nvim interface
:Lazy sync             # Sync all plugins
:Lazy update           # Update plugins
:Lazy check            # Check for plugin updates
:Lazy profile          # View startup profiling
```

## Architecture

### Core Structure
```
├── init.lua                    # Main entry point with basic Vim settings
├── lua/
│   ├── config/lazy.lua         # Lazy.nvim configuration and setup
│   ├── plugins/                # Modular plugin configurations (171+ plugins)
│   │   └── {plugin-name}/      # Each plugin has its own directory
│   │       ├── init.lua        # Plugin specification (LazySpec)
│   │       ├── opts.lua        # Plugin options/configuration
│   │       ├── keys.lua        # Key mappings (LazyKeysSpec[])
│   │       ├── cmds.lua        # Commands that trigger loading
│   │       ├── events.lua      # Events that trigger loading
│   │       └── dependencies.lua # Plugin dependencies
│   └── colorschemes/           # Colorscheme configurations
│       └── {theme-name}/       # Each colorscheme has its own directory
├── lazy-lock.json              # Plugin version lockfile
└── Taskfile.yml               # Task automation
```

### Plugin Architecture Pattern

Every plugin follows a consistent modular pattern:

**init.lua** - Plugin specification:
```lua
---@type LazySpec
local spec = {
  "author/plugin-name",
  lazy = true,                          -- Default: lazy loading
  cmd = require("plugins.plugin-name.cmds"),
  keys = require("plugins.plugin-name.keys"),
  event = require("plugins.plugin-name.events"),
  opts = require("plugins.plugin-name.opts"),
  dependencies = require("plugins.plugin-name.dependencies"),
  config = function()
    require("plugin").setup(require("plugins.plugin-name.opts"))
  end,
  cond = false,                         -- Conditional loading
  enabled = false,                      -- Plugin enable/disable
}
return spec
```

**opts.lua** - Plugin configuration:
```lua
---@type PluginConfigTable
local opts = {
  -- Plugin-specific configuration options
}
return opts
```

**keys.lua** - Key mappings:
```lua
---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>key",
    function() require("plugin").action() end,
    mode = "n",
    desc = "Action description",
  },
}
return keys
```

### Lazy Loading Strategy

- **Default behavior**: All plugins lazy load (`lazy = true` in defaults)
- **Loading triggers**:
  - `cmd`: Load on command execution
  - `keys`: Load on keypress
  - `event`: Load on Vim events (BufReadPre, VeryLazy, etc.)
  - `ft`: Load on filetype detection
- **Immediate loading**: Colorschemes use `lazy = false, priority = 1000`
- **Conditional loading**: Many plugins use `cond = false` or `enabled = false`

### Key Configuration Points

**init.lua**:
- Vim options and basic settings
- Provider disabling for performance
- Leader key setup (`<Space>`)
- Basic key mappings
- Colorscheme activation (`tokyonight`)

**lua/config/lazy.lua**:
- Lazy.nvim configuration with performance optimizations
- Import system: `{ import = "plugins" }` and `{ import = "colorschemes" }`
- Disabled builtin plugins for performance
- Git throttling disabled for faster operations

### Plugin Categories

The 171+ plugins are organized by functionality:
- **LSP/Completion**: nvim-lspconfig, mason, blink-cmp
- **File Management**: oil-nvim, telescope variants
- **Git Integration**: gitsigns, neogit, lazygit, diffview
- **UI/UX**: lualine, barbar/bufferline, nvim-notify, noice
- **Code Navigation**: aerial, outline, telescope
- **Development Tools**: rest-nvim, kulala-nvim, markdown-preview
- **Colorschemes**: Multiple themes with consistent configuration

### Workflow Integration

**Git Workflow**:
- Uses patch branches with date naming (`patch-YYYYMMDD`)
- Dual remote push (origin + codeberg)
- Automated morning routine for branch management

**Development Patterns**:
- Type annotations throughout (`---@type`)
- Consistent error handling
- Performance-first configuration (lazy loading, disabled plugins)
- Modular, maintainable structure

## Key Conventions

1. **Plugin Naming**: Use full plugin names (e.g., `aerial-nvim`, `tokyonight-nvim`)
2. **File Organization**: Each plugin/colorscheme gets its own directory
3. **Type Safety**: All configurations use Lua LSP annotations
4. **Lazy Loading**: Default lazy, explicit immediate loading when needed
5. **Enable/Disable**: Use `enabled = false` rather than commenting out plugins
6. **Conditional Loading**: Use `cond = false` for environment-specific plugins

## Working with Plugins

### Adding a New Plugin
1. Create directory: `lua/plugins/{plugin-name}/`
2. Create `init.lua` with LazySpec
3. Add separate files for opts, keys, cmds, events as needed
4. Follow existing patterns for type annotations and structure

### Modifying Existing Plugins
- Plugin specs are in `{plugin-name}/init.lua`
- Configuration options in `{plugin-name}/opts.lua`
- Key mappings in `{plugin-name}/keys.lua`
- Use `:Lazy reload {plugin-name}` to test changes

### Debugging Plugin Issues
- `:Lazy profile` for startup performance
- `:checkhealth lazy` for plugin health
- `:Lazy log {plugin-name}` for specific plugin logs
- Check `enabled = false` or `cond = false` settings

