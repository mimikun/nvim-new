local M = {}

---@param url string
---@return boolean
---Check if url is an image
M.isImage = function(url)
    local extension = url:match("^.+(%..+)$")
    local imageExt = { ".bmp", ".jpg", ".jpeg", ".png", ".gif" }

    return vim.iter(imageExt):any(function(ext)
        return extension == ext
    end)
end

---@return string ... |nil
---Get absolute path of entry
M.getEntryAbsolutePath = function()
    local oil = require("oil")
    local entry = oil.get_cursor_entry()
    local dir = oil.get_current_dir()
    if not entry or not dir then
        return
    end
    return dir .. entry.name, entry, dir
end

return M
