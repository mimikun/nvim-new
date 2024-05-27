require("config.commands")
require("config.base")
require("config.options")
require("config.clipboard")
--require("config.more-options")
require("config.plugin-manager")
require("config.autocmds")
require("config.keymaps")
-- Set colorscheme
if require("config.settings").use_theme_switcher == "themery" then
    -- themery
    require("config.themery")
end
