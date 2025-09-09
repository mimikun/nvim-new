---@module 'render-markdown'
---@type render.md.UserConfig
local opts = {
  -- Whether markdown should be rendered by default.
  enabled = false,
  -- Vim modes that will show a rendered view of the markdown file, :h mode(), for all enabled
  -- components. Individual components can be enabled for other modes. Remaining modes will be
  -- unaffected by this plugin.
  render_modes = {
    "n",
    "c",
    "t",
  },
  -- Maximum file size (in MB) that this plugin will attempt to render.
  -- File larger than this will effectively be ignored.
  max_file_size = 10.0,
  -- Milliseconds that must pass before updating marks, updates occur.
  -- within the context of the visible window, not the entire buffer.
  debounce = 100,
  -- Pre configured settings that will attempt to mimic various target user experiences.
  -- User provided settings will take precedence.
  -- | obsidian | mimic Obsidian UI                                          |
  -- | lazy     | will attempt to stay up to date with LazyVim configuration |
  -- | none     | does nothing                                               |
  preset = "none",
  -- Only intended to be used for plugin development / debugging.
  log_runtime = false,
  -- Filetypes this plugin will run on.
  file_types = {
    "markdown",
  },
  -- Whether markdown should be rendered when nested inside markdown, i.e. markdown code block
  -- inside markdown file.
  nested = true,
  -- Additional events that will trigger this plugin's render loop.
  change_events = {},
  -- Whether the treesitter highlighter should be restarted after this plugin attaches to its
  -- first buffer for the first time. May be necessary if this plugin is lazy loaded to clear
  -- highlights that have been dynamically disabled.
  restart_highlighter = false,
  patterns = {
    -- Highlight patterns to disable for filetypes, i.e. lines concealed around code blocks
    markdown = {
      disable = true,
    },
  },
  anti_conceal = {
    -- This enables hiding added text on the line the cursor is on.
    enabled = true,
    -- Modes to disable anti conceal feature.
    disabled_modes = false,
    -- Number of lines above cursor to show.
    above = 0,
    -- Number of lines below cursor to show.
    below = 0,
    -- Which elements to always show, ignoring anti conceal behavior. Values can either be
    -- booleans to fix the behavior or string lists representing modes where anti conceal
    -- behavior will be ignored. Valid values are:
    --   bullet
    --   callout
    --   check_icon, check_scope
    --   code_background, code_border, code_language
    --   dash
    --   head_background, head_border, head_icon
    --   indent
    --   link
    --   quote
    --   sign
    --   table_border
    --   virtual_lines
    ignore = {
      code_background = true,
      indent = true,
      sign = true,
      virtual_lines = true,
    },
  },
  latex = {
    -- Turn on / off latex rendering.
    enabled = true,
    -- Additional modes to render latex.
    render_modes = false,
    -- Executable used to convert latex formula to rendered unicode.
    converter = "latex2text",
    -- Determines where latex formula is rendered relative to block.
    -- | above | above latex block |
    -- | below | below latex block |
    position = "above",
    -- Number of empty lines above latex blocks.
    top_pad = 0,
    -- Number of empty lines below latex blocks.
    bottom_pad = 0,
    -- Always use virtual lines for rendering instead of attempting to inline.
    virtual = false,
  },
  completions = {
    -- Settings for blink.cmp completions source
    blink = { enabled = true },
    -- Settings for in-process language server completions
    lsp = { enabled = false },
  },
  heading = {
    -- Useful context to have when evaluating values.
    -- | level    | the number of '#' in the heading marker         |
    -- | sections | for each level how deeply nested the heading is |

    -- Turn on / off heading icon & background rendering.
    enabled = true,
    -- Additional modes to render headings.
    render_modes = false,
    -- Turn on / off atx heading rendering.
    atx = true,
    -- Turn on / off setext heading rendering.
    setext = true,
    -- Turn on / off sign column related rendering.
    sign = true,
    -- Replaces '#+' of 'atx_h._marker'.
    -- Output is evaluated depending on the type.
    -- | function | `value(context)`              |
    -- | string[] | `cycle(value, context.level)` |
    icons = {
      "󰲡 ",
      "󰲣 ",
      "󰲥 ",
      "󰲧 ",
      "󰲩 ",
      "󰲫 ",
    },
    -- Determines how icons fill the available space.
    -- | right   | '#'s are concealed and icon is appended to right side                      |
    -- | inline  | '#'s are concealed and icon is inlined on left side                        |
    -- | overlay | icon is left padded with spaces and inserted on left hiding additional '#' |
    position = "overlay",
    -- Added to the sign column if enabled.
    -- Output is evaluated by `cycle(value, context.level)`.
    signs = { "󰫎 " },
    -- Width of the heading background.
    -- | block | width of the heading text |
    -- | full  | full width of the window  |
    -- Can also be a list of the above values evaluated by `clamp(value, context.level)`.
    width = "full",
    -- Amount of margin to add to the left of headings.
    -- Margin available space is computed after accounting for padding.
    -- If a float < 1 is provided it is treated as a percentage of available window space.
    -- Can also be a list of numbers evaluated by `clamp(value, context.level)`.
    left_margin = 0,
    -- Amount of padding to add to the left of headings.
    -- Output is evaluated using the same logic as 'left_margin'.
    left_pad = 0,
    -- Amount of padding to add to the right of headings when width is 'block'.
    -- Output is evaluated using the same logic as 'left_margin'.
    right_pad = 0,
    -- Minimum width to use for headings when width is 'block'.
    -- Can also be a list of integers evaluated by `clamp(value, context.level)`.
    min_width = 0,
    -- Determines if a border is added above and below headings.
    -- Can also be a list of booleans evaluated by `clamp(value, context.level)`.
    border = false,
    -- Always use virtual lines for heading borders instead of attempting to use empty lines.
    border_virtual = false,
    -- Highlight the start of the border using the foreground highlight.
    border_prefix = false,
    -- Used above heading for border.
    above = "▄",
    -- Used below heading for border.
    below = "▀",
  },
  paragraph = {
    -- Useful context to have when evaluating values.
    -- | text | text value of the node |

    -- Turn on / off paragraph rendering.
    enabled = true,
    -- Additional modes to render paragraphs.
    render_modes = false,
    -- Amount of margin to add to the left of paragraphs.
    -- If a float < 1 is provided it is treated as a percentage of available window space.
    -- Output is evaluated depending on the type.
    -- | function | `value(context)` |
    -- | number   | `value`          |
    left_margin = 0,
    -- Amount of padding to add to the first line of each paragraph.
    -- Output is evaluated using the same logic as 'left_margin'.
    indent = 0,
    -- Minimum width to use for paragraphs.
    min_width = 0,
  },
  code = {
    -- Turn on / off code block & inline code rendering.
    enabled = true,
    -- Additional modes to render code blocks.
    render_modes = false,
    -- Turn on / off sign column related rendering.
    sign = true,
    -- Whether to conceal nodes at the top and bottom of code blocks.
    conceal_delimiters = true,
    -- Turn on / off language heading related rendering.
    language = true,
    -- Determines where language icon is rendered.
    -- | right | right side of code block |
    -- | left  | left side of code block  |
    position = "left",
    -- Whether to include the language icon above code blocks.
    language_icon = true,
    -- Whether to include the language name above code blocks.
    language_name = true,
    -- Whether to include the language info above code blocks.
    language_info = true,
    -- Amount of padding to add around the language.
    -- If a float < 1 is provided it is treated as a percentage of available window space.
    language_pad = 0,
    -- A list of language names for which background highlighting will be disabled.
    -- Likely because that language has background highlights itself.
    -- Use a boolean to make behavior apply to all languages.
    -- Borders above & below blocks will continue to be rendered.
    disable_background = {
      "diff",
    },
    -- Width of the code block background.
    -- | block | width of the code block  |
    -- | full  | full width of the window |
    width = "full",
    -- Amount of margin to add to the left of code blocks.
    -- If a float < 1 is provided it is treated as a percentage of available window space.
    -- Margin available space is computed after accounting for padding.
    left_margin = 0,
    -- Amount of padding to add to the left of code blocks.
    -- If a float < 1 is provided it is treated as a percentage of available window space.
    left_pad = 0,
    -- Amount of padding to add to the right of code blocks when width is 'block'.
    -- If a float < 1 is provided it is treated as a percentage of available window space.
    right_pad = 0,
    -- Minimum width to use for code blocks when width is 'block'.
    min_width = 0,
    -- Determines how the top / bottom of code block are rendered.
    -- | none  | do not render a border                               |
    -- | thick | use the same highlight as the code body              |
    -- | thin  | when lines are empty overlay the above & below icons |
    -- | hide  | conceal lines unless language name or icon is added  |
    border = "hide",
    -- Used above code blocks to fill remaining space around language.
    language_border = "█",
    -- Added to the left of language.
    language_left = "",
    -- Added to the right of language.
    language_right = "",
    -- Used above code blocks for thin border.
    above = "▄",
    -- Used below code blocks for thin border.
    below = "▀",
    -- Turn on / off inline code related rendering.
    inline = true,
    -- Icon to add to the left of inline code.
    inline_left = "",
    -- Icon to add to the right of inline code.
    inline_right = "",
    -- Padding to add to the left & right of inline code.
    inline_pad = 0,
    -- Determines how code blocks & inline code are rendered.
    -- | none     | { enabled = false }                           |
    -- | normal   | { language = false }                          |
    -- | language | { disable_background = true, inline = false } |
    -- | full     | uses all default values                       |
    style = "full",
  },
  dash = {
    -- Turn on / off thematic break rendering.
    enabled = true,
    -- Additional modes to render dash.
    render_modes = false,
    -- Replaces '---'|'***'|'___'|'* * *' of 'thematic_break'.
    -- The icon gets repeated across the window's width.
    icon = "─",
    -- Width of the generated line.
    -- | <number> | a hard coded width value |
    -- | full     | full width of the window |
    -- If a float < 1 is provided it is treated as a percentage of available window space.
    width = "full",
  },
  document = {
    -- Turn on / off document rendering.
    enabled = true,
    -- Additional modes to render document.
    render_modes = false,
    -- Ability to conceal arbitrary ranges of text based on lua patterns, @see :h lua-patterns.
    -- Relies entirely on user to set patterns that handle their edge cases.
    conceal = {
      -- Matched ranges will be concealed using character level conceal.
      char_patterns = {},
      -- Matched ranges will be concealed using line level conceal.
      line_patterns = {},
    },
  },
  bullet = {
    -- Useful context to have when evaluating values.
    -- | level | how deeply nested the list is, 1-indexed          |
    -- | index | how far down the item is at that level, 1-indexed |
    -- | value | text value of the marker node                     |

    -- Turn on / off list bullet rendering
    enabled = true,
    -- Additional modes to render list bullets
    render_modes = false,
    -- Replaces '-'|'+'|'*' of 'list_item'.
    -- If the item is a 'checkbox' a conceal is used to hide the bullet instead.
    -- Output is evaluated depending on the type.
    -- | function   | `value(context)`                                    |
    -- | string     | `value`                                             |
    -- | string[]   | `cycle(value, context.level)`                       |
    -- | string[][] | `clamp(cycle(value, context.level), context.index)` |
    icons = {
      "●",
      "○",
      "◆",
      "◇",
    },
    -- Highlight for item associated with the bullet point.
    -- Output is evaluated using the same logic as 'icons'.
    scope_highlight = {},
  },
  checkbox = {
    -- Checkboxes are a special instance of a 'list_item' that start with a 'shortcut_link'.
    -- There are two special states for unchecked & checked defined in the markdown grammar.

    -- Turn on / off checkbox state rendering.
    enabled = true,
    -- Additional modes to render checkboxes.
    render_modes = false,
    -- Render the bullet point before the checkbox.
    bullet = false,
    -- Padding to add to the right of checkboxes.
    right_pad = 1,
    unchecked = {
      -- Replaces '[ ]' of 'task_list_marker_unchecked'.
      icon = "󰄱 ",
    },
    checked = {
      -- Replaces '[x]' of 'task_list_marker_checked'.
      icon = "󰱒 ",
    },
        -- Define custom checkbox states, more involved, not part of the markdown grammar.
        -- As a result this requires neovim >= 0.10.0 since it relies on 'inline' extmarks.
        -- The key is for healthcheck and to allow users to change its values, value type below.
        -- | raw             | matched against the raw text of a 'shortcut_link'           |
        -- | rendered        | replaces the 'raw' value when rendering                     |
        -- | highlight       | highlight for the 'rendered' icon                           |
        -- | scope_highlight | optional highlight for item associated with custom checkbox |
        -- stylua: ignore
        custom = {
            todo = { 
              raw = '[-]', 
              rendered = '󰥔 ', 
              highlight = 'RenderMarkdownTodo', 
              scope_highlight = nil,
            },
        },
  },
  quote = {
    -- Turn on / off block quote & callout rendering.
    enabled = true,
    -- Additional modes to render quotes.
    render_modes = false,
    -- Replaces '>' of 'block_quote'.
    icon = "▋",
    -- Whether to repeat icon on wrapped lines. Requires neovim >= 0.10. This will obscure text
    -- if incorrectly configured with :h 'showbreak', :h 'breakindent' and :h 'breakindentopt'.
    -- A combination of these that is likely to work follows.
    -- | showbreak      | '  ' (2 spaces)   |
    -- | breakindent    | true              |
    -- | breakindentopt | '' (empty string) |
    -- These are not validated by this plugin. If you want to avoid adding these to your main
    -- configuration then set them in win_options for this plugin.
    repeat_linebreak = false,
    -- Highlight for the quote icon.
    -- If a list is provided output is evaluated by `cycle(value, level)`.
  },
  pipe_table = {
    -- Turn on / off pipe table rendering.
    enabled = true,
    -- Additional modes to render pipe tables.
    render_modes = false,
    -- Pre configured settings largely for setting table border easier.
    -- | heavy  | use thicker border characters     |
    -- | double | use double line border characters |
    -- | round  | use round border corners          |
    -- | none   | does nothing                      |
    preset = "none",
    -- Determines how individual cells of a table are rendered.
    -- | overlay | writes completely over the table, removing conceal behavior and highlights |
    -- | raw     | replaces only the '|' characters in each row, leaving the cells unmodified |
    -- | padded  | raw + cells are padded to maximum visual width for each column             |
    -- | trimmed | padded except empty space is subtracted from visual width calculation      |
    cell = "padded",
    -- Amount of space to put between cell contents and border.
    padding = 1,
    -- Minimum column width to use for padded or trimmed cell.
    min_width = 0,
        -- Characters used to replace table border.
        -- Correspond to top(3), delimiter(3), bottom(3), vertical, & horizontal.
        -- stylua: ignore
        border = {
            '┌', '┬', '┐',
            '├', '┼', '┤',
            '└', '┴', '┘',
            '│', '─',
        },
    -- Turn on / off top & bottom lines.
    border_enabled = true,
    -- Always use virtual lines for table borders instead of attempting to use empty lines.
    -- Will be automatically enabled if indentation module is enabled.
    border_virtual = false,
    -- Gets placed in delimiter row for each column, position is based on alignment.
    alignment_indicator = "━",
    -- Determines how the table as a whole is rendered.
    -- | none   | { enabled = false }        |
    -- | normal | { border_enabled = false } |
    -- | full   | uses all default values    |
    style = "full",
  },
  link = {
    -- Turn on / off inline link icon rendering.
    enabled = true,
    -- Additional modes to render links.
    render_modes = false,
    -- How to handle footnote links, start with a '^'.
    footnote = {
      -- Turn on / off footnote rendering.
      enabled = true,
      -- Replace value with superscript equivalent.
      superscript = true,
      -- Added before link content.
      prefix = "",
      -- Added after link content.
      suffix = "",
    },
    -- Inlined with 'image' elements.
    image = "󰥶 ",
    -- Inlined with 'email_autolink' elements.
    email = "󰀓 ",
    -- Fallback icon for 'inline_link' and 'uri_autolink' elements.
    hyperlink = "󰌹 ",
    -- Applies to WikiLink elements.
    wiki = {
      icon = "󱗖 ",
      scope_highlight = nil,
    },
    -- Define custom destination patterns so icons can quickly inform you of what a link
    -- contains. Applies to 'inline_link', 'uri_autolink', and wikilink nodes. When multiple
    -- patterns match a link the one with the longer pattern is used.
    -- The key is for healthcheck and to allow users to change its values, value type below.
    -- | pattern   | matched against the destination text                            |
    -- | icon      | gets inlined before the link text                               |
    -- | kind      | optional determines how pattern is checked                      |
    -- |           | pattern | @see :h lua-patterns, is the default if not set       |
    -- |           | suffix  | @see :h vim.endswith()                                |
    -- | priority  | optional used when multiple match, uses pattern length if empty |
    -- | highlight | optional highlight for 'icon', uses fallback highlight if empty |
    custom = {
      web = { pattern = "^http", icon = "󰖟 " },
      discord = { pattern = "discord%.com", icon = "󰙯 " },
      github = { pattern = "github%.com", icon = "󰊤 " },
      gitlab = { pattern = "gitlab%.com", icon = "󰮠 " },
      google = { pattern = "google%.com", icon = "󰊭 " },
      neovim = { pattern = "neovim%.io", icon = " " },
      reddit = { pattern = "reddit%.com", icon = "󰑍 " },
      stackoverflow = { pattern = "stackoverflow%.com", icon = "󰓌 " },
      wikipedia = { pattern = "wikipedia%.org", icon = "󰖬 " },
      youtube = { pattern = "youtube%.com", icon = "󰗃 " },
    },
  },
  inline_highlight = {
    -- Mimics Obsidian inline highlights when content is surrounded by double equals.
    -- The equals on both ends are concealed and the inner content is highlighted.

    -- Turn on / off inline highlight rendering.
    enabled = true,
    -- Additional modes to render inline highlights.
    render_modes = false,
  },
  indent = {
    -- Mimic org-indent-mode behavior by indenting everything under a heading based on the
    -- level of the heading. Indenting starts from level 2 headings onward by default.

    -- Turn on / off org-indent-mode.
    enabled = false,
    -- Additional modes to render indents.
    render_modes = false,
    -- Amount of additional padding added for each heading level.
    per_level = 2,
    -- Heading levels <= this value will not be indented.
    -- Use 0 to begin indenting from the very first level.
    skip_level = 1,
    -- Do not indent heading titles, only the body.
    skip_heading = false,
    -- Prefix added when indenting, one per level.
    icon = "▎",
    -- Priority to assign to extmarks.
    priority = 0,
  },
  html = {
    -- Turn on / off all HTML rendering.
    enabled = true,
    -- Additional modes to render HTML.
    render_modes = false,
    comment = {
      -- Turn on / off HTML comment concealing.
      conceal = true,
      -- Optional text to inline before the concealed comment.
      text = nil,
    },
    -- HTML tags whose start and end will be hidden and icon shown.
    -- The key is matched against the tag name, value type below.
    -- | icon      | gets inlined at the start |
    -- | highlight | highlight for the icon    |
    tag = {},
  },
  win_options = {
    -- Window options to use that change between rendered and raw view.

    -- @see :h 'conceallevel'
    conceallevel = {
      -- Used when being rendered, concealed text is completely hidden.
      rendered = 3,
    },
    -- @see :h 'concealcursor'
    concealcursor = {
      -- Used when being rendered, show concealed text in all modes.
      rendered = "",
    },
  },
  overrides = {
    -- More granular configuration mechanism, allows different aspects of buffers to have their own
    -- behavior. Values default to the top level configuration if no override is provided. Supports
    -- the following fields:
    --   enabled, render_modes, max_file_size, debounce, anti_conceal, bullet, callout, checkbox,
    --   code, dash, document, heading, html, indent, inline_highlight, latex, link, padding,
    --   paragraph, pipe_table, quote, sign, win_options, yaml

    -- Override for different buflisted values, @see :h 'buflisted'.
    buflisted = {},
    -- Override for different buftype values, @see :h 'buftype'.
    buftype = {
      nofile = {
        render_modes = true,
        sign = { enabled = false },
      },
    },
    -- Override for different filetype values, @see :h 'filetype'.
    filetype = {},
  },
  yaml = {
    -- Turn on / off all yaml rendering.
    enabled = true,
    -- Additional modes to render yaml.
    render_modes = false,
  },
}

return opts
