---@type table
local opts = {
  profiles = {
    -- NOTE: DEFAULT
    {
      name = "default",
      providers = {
        -- NOTE: usages
        {
          name = "usages",
          enabled = true,
          include = { "refs", "defs", "impls" },
          --include = { "refs" },
          breakdown = true,
          show_zero = true,
          labels = {
            refs = "refs",
            impls = "impls",
            defs = "defs",
            usages = "usages",
          },
          icon_for_single = "󰌹 ",
          inner_separator = ", ",
        },
        -- NOTE: last_author
        {
          name = "last_author",
          enabled = true,
          cache_max_files = 50,
        },
        -- NOTE: diagnostics
        {
          name = "diagnostics",
          enabled = false,
          ---@type "ERROR" | "WARN" | "INFO" | "HINT"
          min_level = "WARN",
        },
        -- NOTE: complexity
        {
          name = "complexity",
          enabled = false,
          ---@type "S" | "M" | "L" | "XL"
          min_level = "L",
        },
      },
      --limits = {
      --  exclude = {
      --    -- Common
      --    ".git/**",
      --    "build*/**", -- Covers `build`, `build_debug`, etc.
      --
      --    -- JavaScript/TypeScript
      --    "node_modules/**",
      --    "dist/**",
      --    "out/**",
      --    ".next/**",
      --    "*.min.js",
      --    "*.min.css",
      --
      --    -- Python
      --    ".venv/**",
      --    "venv/**",
      --    "env/**",
      --    "__pycache__/**",
      --    ".mypy_cache/**",
      --
      --    -- Rust
      --    "target/**",
      --
      --    -- Java
      --    "build/**", -- Gradle build output
      --    "target/**", -- Maven build output (also used in Rust)
      --    ".gradle/**", -- Gradle metadata
      --    ".settings/**", -- Eclipse project settings
      --    ".classpath", -- Eclipse metadata
      --    ".project", -- Eclipse metadata
      --
      --    -- C# (.NET / MSBuild)
      --    "bin/**", -- Compiled binaries
      --    "obj/**", -- Intermediate object files
      --    "*.dll", -- Assemblies (expensive to parse)
      --    "*.exe", -- Binaries
      --    "*.pdb", -- Debug symbols
      --    "*.csproj", -- Metadata (can include but probably not needed for lenses)
      --  },
      --  exclude_append = {}, -- additional patterns to append to resolved exclude list
      --  exclude_gitignored = true,
      --  max_lines = 1000,
      --  max_lenses = 70,
      --},
      style = {
        separator = " • ", -- separator between all lens attributes
        highlight = "Comment", -- highlight group for lens text
        prefix = "┃ ", -- prefix before lens content
        placement = "above", -- "above" | "inline" - where to render lenses (consider prefix = "" for inline)
        use_nerdfont = true, -- enable nerd font icons in built-in providers
        render = "all", -- "all" | "focused" (only active window's focused function)
      },
    },
    -- You can define additional profiles here and switch between them at runtime
    -- NOTE: MINIMAL
    {
      name = "minimal",
      providers = {
        {
          name = "diagnostics",
          enabled = true,
        },
      },
      style = {
        render = "focused",
      },
    },
    -- NOTE: MINIMAL_INLINE
    {
      name = "minimal-inline",
      style = {
        placement = "inline",
        prefix = "",
        -- render = "focused", optionally render lenses only for focused function
      },
    },
    -- NOTE: basic
    {
      name = "basic",
      providers = {
        { name = "usages", enabled = true, include = { "refs" }, breakdown = false },
        { name = "last_author", enabled = true },
      },
      style = { render = "all", placement = "above" },
    },
    -- NOTE: informative
    {
      name = "informative",
      providers = {
        { name = "usages", enabled = true, include = { "refs", "defs", "impls" }, breakdown = true },
        { name = "diagnostics", enabled = true, min_level = "HINT" },
        { name = "complexity", enabled = true },
      },
      style = { render = "focused", placement = "inline" },
    },
  },
  -- global settings (apply to all profiles)
  limits = {
    -- exclude = {
    -- file patterns that lensline will not process for lenses
    -- see config.lua for extensive list of default patterns
    -- },
    exclude_append = {}, -- additional patterns to append to exclude list (empty by default)
    exclude_gitignored = true, -- respect .gitignore by not processing ignored files
    max_lines = 1000, -- process only first N lines of large files
    max_lenses = 70, -- skip rendering if too many lenses generated
  },
  debounce_ms = 500,
  focused_debounce_ms = 150,
  silence_lsp = true,
  debug_mode = false,
  provider_timeout_ms = 5000, -- provider execution timeout (ms) for async safety net (test override supported)
}

return opts
