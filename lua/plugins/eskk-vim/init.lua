---@type LazySpec
local spec = {
  "vim-skk/eskk.vim",
  --lazy = false,
  cmd = require("plugins.eskk-vim.cmds"),
  --keys = "",
  event = "VeryLazy",
  config = function()
    ---@type table[]
    local skk_servers = {
      -- google-ime-skk
      google = {
        host = "localhost",
        port = 55100,
        type = "notfound",
      },
      -- yaskkserv
      yaskkserv = {
        host = "localhost",
        port = 1178,
      },
    }

    ---@type "jp106" | "us101"
    local azik_keyboard_type = "jp106"

    vim.g["eskk#directory"] = "~/.eskk"
    vim.g["eskk#dictionary"] = {
      path = "~/.skk-jisyo",
      sorted = 0,
      encoding = "utf-8",
    }
    vim.g["eskk#large_dictionary"] = {
      path = "/usr/local/share/skk/SKK-JISYO.L",
      sorted = 1,
      encoding = "euc-jp",
    }
    vim.g["eskk#server"] = skk_servers.google
    vim.g["eskk#backup_dictionary"] = vim.g["eskk#dictionary"].path .. ".BAK"
    vim.g["eskk#auto_save_dictionary_at_exit"] = 1
    vim.g["eskk#dictionary_save_count"] = -1
    vim.g["eskk#select_cand_keys"] = "asdfjkl"
    vim.g["eskk#show_candidates_count"] = 4
    vim.g["eskk#kata_convert_to_hira_at_henkan"] = 1
    vim.g["eskk#kata_convert_to_hira_at_completion"] = 1
    vim.g["eskk#show_annotation"] = 0
    vim.g["eskk#kakutei_when_unique_candidate"] = 0
    vim.g["eskk#no_default_mappings"] = 0
    vim.g["eskk#mapped_keys"] = vim.cmd([[eskk#get_default_mapped_keys()]])
    vim.g["eskk#initial_mode"] = "hira"
    vim.g["eskk#statusline_mode_strings"] = {
      hira = "あ",
      kata = "ア",
      ascii = "aA",
      zenei = "ａ",
      hankata = "ｧｱ",
      abbrev = "aあ",
    }
    vim.g["eskk#marker_henkan"] = "▽"
    vim.g["eskk#marker_okuri"] = "*"
    vim.g["eskk#marker_henkan_select"] = "▼"
    vim.g["eskk#marker_jisyo_touroku"] = "?"
    vim.g["eskk#enable_completion"] = 1
    vim.g["eskk#max_candidates"] = 30
    vim.g["eskk#start_completion_length"] = 3
    vim.g["eskk#register_completed_word"] = 1
    vim.g["eskk#tab_select_completion"] = 0
    vim.g["eskk#use_color_cursor"] = 1
    vim.g["eskk#cursor_color"] = {
      ascii = { "#8b8b83", "#bebebe" },
      hira = { "#8b3e2f", "#ffc0cb" },
      kata = { "#228b22", "#00ff00" },
      abbrev = "#4169e1",
      zenei = "#ffd700",
    }
    vim.g["eskk#egg_like_newline"] = 0
    vim.g["eskk#egg_like_newline_completion"] = 0
    vim.g["eskk#keep_state"] = 0
    vim.g["eskk#keep_state_beyond_buffer"] = 0
    vim.g["eskk#revert_henkan_style"] = "okuri"
    vim.g["eskk#delete_implies_kakutei"] = 0
    vim.g["eskk#rom_input_style"] = "skk"
    vim.g["eskk#auto_henkan_at_okuri_match"] = 1
    vim.g["eskk#set_undo_point"] = {
      sticky = 1,
      kakutei = 1,
    }
    vim.g["eskk#fix_extra_okuri"] = 1
    vim.g["eskk#convert_at_exact_match"] = 0
    vim.g["eskk#use_azik"] = 0
    vim.g["eskk#azik_enable_precise_shift"] = 0
    vim.g["eskk#azik_keyboard_type"] = azik_keyboard_type
  end,
  cond = false,
  enabled = false,
}

return spec
