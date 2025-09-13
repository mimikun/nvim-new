# Repository Guidelines

## Project Structure & Module Organization
- `init.lua`: Core Neovim options, leader, colorscheme.
- `lua/config/lazy.lua`: lazy.nvim bootstrap and global settings.
- `lua/plugins/{plugin}/`: One directory per plugin.
  - Typical files: `init.lua` (LazySpec), `opts.lua`, `keys.lua`, `cmds.lua`, `events.lua`, `dependencies.lua`.
- `lua/colorschemes/{theme}/`: Colorscheme specs (`lazy=false`, `priority=1000`).
- `lazy-lock.json`: Pinned plugin versions.  `Taskfile.yml`: task automation.
- `templates/simple_lazyspec.tpl`: Template for new plugin specs.

## Build, Test, and Development Commands
- `nvim`: Launch with this config. Inside Neovim:
  - `:Lazy sync` / `:Lazy update` / `:Lazy profile` / `:Lazy check`.
- Health checks: `nvim --headless "+checkhealth" +qa`.
- Task runner (go-task):
  - `task` (list tasks), `task morning-routine`, `task patch-branch`, `task clean-fetch`, `task push`.

## Coding Style & Naming Conventions
- Language: Lua (Neovim runtime). Indentation: 2 spaces; keep lines concise; no trailing whitespace.
- Use Lua LSP annotations (`---@type`, `---@param`, `---@return`).
- Keep specs minimal in `init.lua`; put configuration in `opts.lua`; load-time triggers in `keys.lua`/`cmds.lua`/`events.lua`.
- Prefer toggles over removal: set `enabled = false` or `cond = false` instead of deleting plugins.
- Naming: plugin dirs in kebab-case (often suffixed `-nvim`); colorschemes under `lua/colorschemes/{name}`.

## Testing Guidelines
- No unit test suite. Validate via:
  - `nvim --headless "+checkhealth" +qa`
  - Lazy ops: `:Lazy check`, `:Lazy log {plugin}`, `:Lazy profile`
  - Reload a single spec after edits: `:Lazy reload {plugin-name}`

## Commit & Pull Request Guidelines
- Branching: use `patch-YYYYMMDD` (see `task morning-routine`).
- Commits: clear, imperative subject (≤72 chars) + brief rationale.
- PRs: describe scope, link issues, include screenshots for UI/UX changes, list tested commands, call out risks/rollbacks.

## Security & Configuration Tips
- Respect the lockfile; avoid unpinned upgrades without review.
- Do not commit secrets; keep API keys in your environment.
- Gate platform-specific or experimental plugins with `cond`/`enabled` and document in the plugin dir.

## Agent-Specific Instructions
- Follow this module pattern and annotations; keep changes focused and reversible.
- Avoid introducing new dependencies without lazy-loading and a clear `opts.lua`.
- Update docs (this file and plugin notes) when behavior or commands change.

