-- using content tags to handle clipboard data
local clipboard = require("native-clipboard")

-- NOTE: text

local text = clipboard:get("text") -- String | nil
if text then
  print(text)
  -- Hello, World! 😀
end

-- NOTE: rtf (rich text)
-- copied from a word processor, email client, etc.

local rtf = clipboard:get("rtf") -- String | nil
if rtf then
  print(rtf)
  -- {\rtf1\ansi\deff0 {\fonttbl {\f0 Arial;}}\f0\fs24 Hello, World!}
end

-- NOTE: html
-- copied from a web browser, svg content, etc.

local html = clipboard:get("html") -- String | nil
if html then
  print(html)
  -- <p>Hello, <b>World!</b></p>
end

-- NOTE: image
-- copied from a web browser, image viewer, image editor, etc.

local image = clipboard:get("image") -- { data, bytes, extension, type },
if image then
  -- save to file
  local downloads = vim.fn.expand("~/Downloads") .. "/"
  local file, err = io.open(downloads .. "clipboard_image." .. image.extension, "wb")
  if not file then
    print("Error opening file: " .. err)
  else
    file:write(image.data)
    file:close()
    print(
      "Wrote "
        .. image.bytes
        .. " bytes to "
        .. downloads
        .. "clipboard_image."
        .. image.extension
        .. " ("
        .. image.type
        .. ")"
    )
  end
end

-- NOTE: files
-- copied from a file manager, e.g. Nautilus, Explorer, Finder

local files = clipboard:get("files") -- Table of strings | nil
if files then
  for _, file_path in ipairs(files) do
    print(file_path)
    -- {"/some/path/to/folder", "/some/path/to/file.txt"}
  end
end
