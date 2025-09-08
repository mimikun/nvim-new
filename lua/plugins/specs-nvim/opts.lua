local S = require("specs")

local specs = {
  faders = {
    sinus = S.sinus_fader,
    linear = S.linear_fader,
    exp = S.exp_fader,
    pulse = S.pulse_fader,
    empty = S.empty_fader,
  },
  resizers = {
    shrink = S.shrink_resizer,
    slide = S.slide_resizer,
    empty = S.empty_resizer,
  },
}

---@type table
local opts = {
  popup = {
    delay_ms = 0,
    inc_ms = 10,
    blend = 10,
    width = 10,
    fader = specs.faders.linear,
    resizer = specs.resizers.shrink,
  },
  ignore_filetypes = {},
  ignore_buftypes = {
    nofile = true,
  },
}

return opts
