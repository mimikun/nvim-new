---@type BqfConfig
local opts = {
  auto_resize_height = true,
  previous_winid_ft_skip = {},
  preview = {
    border = { "┏", "━", "┓", "┃", "┛", "━", "┗", "┃" },
    show_title = false,
    delay_syntax = 80,
    win_height = 12,
    win_vheight = 12,
    should_preview_cb = function(bufnr, qwinid)
      local ret = true
      local bufname = vim.api.nvim_buf_get_name(bufnr)
      local fsize = vim.fn.getfsize(bufname)
      if fsize > 100 * 1024 then
        -- skip file size greater than 100k
        ret = false
      elseif bufname:match("^fugitive://") then
        -- skip fugitive buffer
        ret = false
      end
      return ret
    end,
  },
  func_map = {
    drop = "o",
    openc = "O",
    split = "<C-s>",
    tabdrop = "<C-t>",
    tabc = "",
    ptogglemode = "z,",
  },
  filter = {
    fzf = {
      action_for = {
        ["ctrl-s"] = "split",
        ["ctrl-t"] = "tab drop",
        ["ctrl-v"] = "vsplit",
        ["ctrl-x"] = "split",
        ["ctrl-q"] = "signtoggle",
        ["ctrl-c"] = "closeall",
      },
      extra_opts = {
        "--bind",
        "ctrl-o:toggle-all",
        "--prompt",
        "> ",
      },
    },
  },
}

return opts
