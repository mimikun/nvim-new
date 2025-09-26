---@type grug.far.Options
local opts = {
  debounceMs = 500,
  minSearchChars = 2,
  maxSearchMatches = 2000,
  maxLineLength = 1000,
  breakindentopt = "shift:6",
  normalModeSearch = false,
  maxWorkers = 4,
  enabledEngines = {
    "ripgrep",
    "astgrep",
    "astgrep-rules",
  },
  ---@type "ripgrep" | "astgrep" | "astgrep-rules" | nil
  engine = "ripgrep",
  enabledReplacementInterpreters = {
    "default",
    "lua",
    "vimscript",
  },
  ---@type "lua" | "vimscript" | "default"
  replacementInterpreter = "default",
  windowCreationCommand = "vsplit",
  disableBufferLineNumbers = true,
  helpLine = {
    enabled = true,
  },
  maxSearchCharsInTitles = 30,
  staticTitle = nil,
  startInInsertMode = true,
  startCursorRow = 1,
  wrap = true,
  showCompactInputs = false,
  showInputsTopPadding = true,
  showInputsBottomPadding = true,
  showStatusIcon = true,
  showEngineInfo = true,
  showStatusInfo = true,
  onStatusChange = function(buf)
    local win = vim.fn.bufwinid(buf)
    vim.fn.win_execute(win, "redrawstatus")
  end,
  onStatusChangeThrottleTime = 500,
  transient = false,
  backspaceEol = true,
  ignoreVisualSelection = false,
  ---@type "prefill-search" | "operate-within-range" | "ignore"
  visualSelectionUsage = "prefill-search",
  resultsSeparatorLineChar = "",
  resultsHighlight = true,
  inputsHighlight = true,
  ---@type LineNumberLabelType
  lineNumberLabel = function(params, options)
    local width = math.max(params.max_line_number_length, 3)
    local lineNumbersEllipsis = options.icons.enabled and options.icons.lineNumbersEllipsis or " "
    return {
      {
        params.line_number and ("%" .. width .. "s "):format(params.line_number)
          or (
            (" "):rep(width - vim.fn.strdisplaywidth(lineNumbersEllipsis)) -- to support multi-byte utf-8 chars
            .. lineNumbersEllipsis
            .. " "
          ),
        params.is_current_line and "GrugFarResultsCursorLineNo" or "GrugFarResultsLineNr",
      },
    }
  end,
  ---@type FilePathConcealType
  filePathConceal = function(params)
    local len = #params.file_path
    local window_width = params.window_width - 8 -- note: that last bit accounts for sign column, conceal char, etc.
    if len < params.window_width then
      return
    end

    local first_part_len = math.floor(window_width / 3)
    local delta = len - window_width

    return first_part_len, first_part_len + delta
  end,
  filePathConcealChar = "…",
  spinnerStates = {
    "󱑋 ",
    "󱑌 ",
    "󱑍 ",
    "󱑎 ",
    "󱑏 ",
    "󱑐 ",
    "󱑑 ",
    "󱑒 ",
    "󱑓 ",
    "󱑔 ",
    "󱑕 ",
    "󱑖 ",
  },
  reportDuration = true,
  ---@type grug.far.IconsTable
  icons = {
    enabled = true,
    ---@type "first_available" | "mini.icons" | "nvim-web-devicons" | false
    fileIconsProvider = "first_available",

    actionEntryBullet = " ",

    searchInput = " ",
    replaceInput = " ",
    filesFilterInput = " ",
    flagsInput = "󰮚 ",
    pathsInput = " ",

    resultsStatusReady = "󱩾 ",
    resultsStatusError = " ",
    resultsStatusSuccess = "󰗡 ",
    resultsActionMessage = "  ",
    resultsEngineLeft = "⟪",
    resultsEngineRight = "⟫",
    resultsChangeIndicator = "┃",
    resultsAddedIndicator = "▒",
    resultsRemovedIndicator = "▒",
    resultsDiffSeparatorIndicator = "┊",
    historyTitle = "   ",
    helpTitle = " 󰘥  ",
    lineNumbersEllipsis = " ",

    newline = " ",
  },
  prefills = {
    search = nil,
    replacement = nil,
    filesFilter = nil,
    flags = nil,
    paths = nil,
  },
  history = {
    maxHistoryLines = 10000,
    historyDir = vim.fn.stdpath("state") .. "/grug-far",
  },
  pathProviders = {
    ["buflist"] = function()
      return require("grug-far.pathProviders").getBuflistFiles()
    end,
    ["buflist-cwd"] = function()
      return require("grug-far.pathProviders").getBuflistFilesInCWD()
    end,
    ["qflist"] = function()
      return require("grug-far.pathProviders").getQuickfixListFiles()
    end,
    ["loclist"] = function(opts)
      return require("grug-far.pathProviders").getLoclistFiles(opts.prevWin)
    end,
  },
  instanceName = nil,
  folding = {
    enabled = true,
    foldlevel = 1,
    foldcolumn = "1",
    include_file_path = false,
  },
  resultLocation = {
    showNumberLabel = true,
    ---@type "right_align" | "eol" | "inline"
    numberLabelPosition = "right_align",
    numberLabelFormat = " [%d]",
  },
  ---@type grug.far.OpenTargetWindowTable
  openTargetWindow = {
    ---@field exclude (string | FilterWindowFn)[]
    exclude = {},
    ---@type "prev" | "left" | "right" | "above" | "below"
    preferredLocation = "left",
    useScratchBuffer = true,
  },
}

return opts
