---@type table
local voices = {
  en_us = {
    ana = "en-US-AnaNeural",
    andrew = "en-US-AndrewNeural",
    aria = "en-US-AriaNeural",
    ava = "en-US-AvaNeural",
    brian = "en-US-BrianNeural",
    christopher = "en-US-ChristopherNeural",
    emma = "en-US-EmmaNeural",
    eric = "en-US-EricNeural",
    guy = "en-US-GuyNeural",
    jenny = "en-US-JennyNeural",
    michelle = "en-US-MichelleNeural",
    roger = "en-US-RogerNeural",
    steffan = "en-US-SteffanNeural",
    multilingual = {
      andrew = "en-US-AndrewMultilingualNeural",
      ava = "en-US-AvaMultilingualNeural",
      brian = "en-US-BrianMultilingualNeural",
      emma = "en-US-EmmaMultilingualNeural",
    },
  },
  ja_jp = {
    keita = "ja-JP-KeitaNeural",
    nanami = "ja-JP-NanamiNeural",
  },
}

---@type table
local opts = {
  voice = voices.ja_jp.keita,
}

return opts
