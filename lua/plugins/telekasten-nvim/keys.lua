--[[
-- Launch panel if nothing is typed after <leader>z
vim.keymap.set("n", "<leader>z", "<cmd>Telekasten panel<CR>")

-- Most used functions
vim.keymap.set("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>")
vim.keymap.set("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>")
vim.keymap.set("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>")
vim.keymap.set("n", "<leader>zz", "<cmd>Telekasten follow_link<CR>")
vim.keymap.set("n", "<leader>zn", "<cmd>Telekasten new_note<CR>")
vim.keymap.set("n", "<leader>zc", "<cmd>Telekasten show_calendar<CR>")
vim.keymap.set("n", "<leader>zb", "<cmd>Telekasten show_backlinks<CR>")
vim.keymap.set("n", "<leader>zI", "<cmd>Telekasten insert_img_link<CR>")

-- Call insert link automatically when we start typing a link
vim.keymap.set("i", "[[", "<cmd>Telekasten insert_link<CR>")
]]
--[[
 nnoremap <leader>zf :lua require('telekasten').find_notes()<CR>
 nnoremap <leader>zd :lua require('telekasten').find_daily_notes()<CR>
 nnoremap <leader>zg :lua require('telekasten').search_notes()<CR>
 nnoremap <leader>zz :lua require('telekasten').follow_link()<CR>
 nnoremap <leader>zT :lua require('telekasten').goto_today()<CR>
 nnoremap <leader>zW :lua require('telekasten').goto_thisweek()<CR>
 nnoremap <leader>zw :lua require('telekasten').find_weekly_notes()<CR>
 nnoremap <leader>zn :lua require('telekasten').new_note()<CR>
 nnoremap <leader>zN :lua require('telekasten').new_templated_note()<CR>
 nnoremap <leader>zy :lua require('telekasten').yank_notelink()<CR>
 nnoremap <leader>zc :lua require('telekasten').show_calendar()<CR>
 nnoremap <leader>zC :CalendarT<CR>
 nnoremap <leader>zi :lua require('telekasten').paste_img_and_link()<CR>
 nnoremap <leader>zt :lua require('telekasten').toggle_todo()<CR>
 " Toggling todos in visual mode
 vnoremap <leader>zt :lua require('telekasten').toggle_todo({ v = true })<CR>
 nnoremap <leader>zb :lua require('telekasten').show_backlinks()<CR>
 nnoremap <leader>zF :lua require('telekasten').find_friends()<CR>
 nnoremap <leader>zI :lua require('telekasten').insert_img_link({ i=true })<CR>
 nnoremap <leader>zp :lua require('telekasten').preview_img()<CR>
 nnoremap <leader>zm :lua require('telekasten').browse_media()<CR>
 nnoremap <leader># :lua require('telekasten').show_tags()<CR>

 inoremap <leader>[ <ESC>:lua require('telekasten').insert_link({ i=true })<CR>
 inoremap <leader>zt <ESC>:lua require('telekasten').toggle_todo({ i=true })<CR>
 inoremap <leader># <cmd>lua require('telekasten').show_tags({i = true})<cr>
]]
