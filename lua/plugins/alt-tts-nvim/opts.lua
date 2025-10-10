---@type table
local opts = {
  ---@type string | "auto" | "macos" | "openai"
  backend = "auto",
  macos = {
    ---@type string | "Alex" | "Samantha" | "Victoria" | "Karen" | "Daniel" | "Moira" | "Rishi" | "Tessa"
    voice = "Alex",
    rate = 200,
    volume = 0.5,
    audio_device = nil,
    pitch = nil,
    modulation = nil,
  },
  openai = {
    ---@type string | "tts-1" | "tts-1-hd"
    model = "tts-1",
    ---@type string | "alloy" | "echo" | "fable" | "onyx" | "nova" | "shimmer"
    voice = "alloy",
    speed = 1.0,
    ---@type string | "mp3" | "opus" | "aac" | "flac"
    format = "mp3",
    headers = {},
    timeout = 30,
  },
  playback = {
    auto_clear_queue = false,
    chunk_size = 500,
    pause_between_chunks = 0.5,
    ---@type string | "afplay" | "mpv" | "ffplay" | "play"
    player = "auto",
    player_args = {},
    ---@type string | "line" | "paragraph" | "section"
    default_selection = "section",
  },
  cache = {
    directory = vim.fn.stdpath("cache") .. "/tts",
    -- MB
    max_size = 100,
    -- days
    max_age = 7,
  },
  preprocessing = {
    clean_code = false,
    ---@type string | "none" | "minimal" | "moderate" | "aggressive"
    filtering_level = "moderate",
    replacements = {
      -- Task markers
      ["TODO:?"] = "todo item",
      ["FIXME:?"] = "fix me item",
      ["NOTE:?"] = "note",
      ["WARNING:?"] = "warning",
      ["TIP:?"] = "tip",

      -- Technical acronyms
      ["API"] = "A P I",
      ["URL"] = "U R L",
      ["HTTP"] = "H T T P",
      ["JSON"] = "J son",
      ["SQL"] = "S Q L",
      ["CSS"] = "C S S",
      ["HTML"] = "H T M L",
      ["JS"] = "javascript",
      ["TS"] = "TypeScript",
      ["AI"] = "artificial intelligence",
      ["TL;DR"] = "too long did not read",

      -- Common abbreviations
      ["etc."] = "etcetera",
      ["i.e."] = "that is",
      ["e.g."] = "for example",
      --["vs%."] = "versus",
      --["Dr%."] = "Doctor",
      --["Mr%."] = "Mister",
      --["Mrs%."] = "Missus",
      --["Ms%."] = "Miss",
      --["Prof%."] = "Professor",
      --["Sr%."] = "Senior",
      --["Jr%."] = "Junior",

      -- Custom identifiers
      -- ["MyApp"] = "my app",
      -- ["BigCorp"] = "big corp",

      -- Project-specific identifiers
      ["MyApp"] = "my app",
      ["BigCorp"] = "big corp",

      -- Custom terminology
      ["foobar"] = "foo bar",
      ["widget"] = "wid get",
    },
    languages = {
      lua = {
        ["~="] = "not equal",
        ["%.%."] = "concatenate",
      },
      python = {
        ["!="] = "not equal",
        ["//"] = "integer divide",
      },
      javascript = {
        ["=>"] = "arrow function",
        ["==="] = "strict equals",
        ["!=="] = "strict not equals",
      },
      rust = {
        ["fn "] = "function ",
        ["mut "] = "mutable ",
        ["impl "] = "implementation ",
      },
    },
  },

  -- Hooks
  hooks = {
    -- function(text) return modified_text end
    before_play = nil,
    -- function(text) end
    after_play = nil,
    -- function(new_state, old_state) end
    on_state_change = nil,
    on_error = function(err)
      vim.notify("TTS Error: " .. err, vim.log.levels.ERROR)
    end,
    -- function(item, index, total) end
    on_queue_item = nil,
  },
  notifications = {
    -- Use vim.notify for notifications
    use_notify = false,
  },
}

return opts
