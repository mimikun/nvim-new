---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>goo",
    ":Octohub repos<CR>",
    mode = "n",
    desc = "All Repos",
    { noremap = true, silent = true },
  },
  -- XXX: SEP
  {
    "<leader>gob",
    ":Octohub repos sort:size<CR>",
    mode = "n",
    desc = "Repos by Size",
    { noremap = true, silent = true },
  },
  {
    "<leader>goc",
    ":Octohub repos sort:created<CR>",
    mode = "n",
    desc = "Repos by Created",
    { noremap = true, silent = true },
  },
  {
    "<leader>gof",
    ":Octohub repos sort:forks<CR>",
    mode = "n",
    desc = "Repos by Forks",
    { noremap = true, silent = true },
  },
  {
    "<leader>goi",
    ":Octohub repos sort:issues<CR>",
    mode = "n",
    desc = "Repos by Issues",
    { noremap = true, silent = true },
  },
  {
    "<leader>gol",
    ":Octohub repos sort:language<CR>",
    mode = "n",
    desc = "Repos by Language",
    { noremap = true, silent = true },
  },
  {
    "<leader>gos",
    ":Octohub repos sort:stars<CR>",
    mode = "n",
    desc = "Repos by Stars",
    { noremap = true, silent = true },
  },
  {
    "<leader>gou",
    ":Octohub repos sort:updated<CR>",
    mode = "n",
    desc = "Repos by Updated",
    { noremap = true, silent = true },
  },
  {
    "<leader>goU",
    ":Octohub repos sort:pushed<CR>",
    mode = "n",
    desc = "Repos by Pushed",
    { noremap = true, silent = true },
  },
  -- XXX: SEP
  {
    "<leader>goA",
    ":Octohub repos type:archived<CR>",
    mode = "n",
    desc = "Archived Repos",
    { noremap = true, silent = true },
  },
  {
    "<leader>goF",
    ":Octohub repos type:forked<CR>",
    mode = "n",
    desc = "Forked Repos",
    { noremap = true, silent = true },
  },
  {
    "<leader>goP",
    ":Octohub repos type:private<CR>",
    mode = "n",
    desc = "Private Repos",
    { noremap = true, silent = true },
  },
  {
    "<leader>goS",
    ":Octohub repos type:starred<CR>",
    mode = "n",
    desc = "Starred Repos",
    { noremap = true, silent = true },
  },
  {
    "<leader>goT",
    ":Octohub repos type:template<CR>",
    mode = "n",
    desc = "Template Repos",
    { noremap = true, silent = true },
  },
  -- XXX: SEP
  {
    "<leader>goL",
    ":Octohub repos languages<CR>",
    mode = "n",
    desc = "Filter by Language",
    { noremap = true, silent = true },
  },
  -- XXX: SEP
  {
    "<leader>goa",
    ":Octohub stats activity<CR>",
    mode = "n",
    desc = "Activity Stats",
    { noremap = true, silent = true },
  },
  {
    "<leader>gog",
    ":Octohub stats contributions<CR>",
    mode = "n",
    desc = "Contribution Graph",
    { noremap = true, silent = true },
  },
  {
    "<leader>gor",
    ":Octohub stats repo<CR>",
    mode = "n",
    desc = "Repo Stats",
    { noremap = true, silent = true },
  },
  {
    "<leader>got",
    ":Octohub stats<CR>",
    mode = "n",
    desc = "All Stats",
    { noremap = true, silent = true },
  },
  -- XXX: SEP
  {
    "<leader>gop",
    ":Octohub web profile<CR>",
    mode = "n",
    desc = "Open GitHub Profile",
    { noremap = true, silent = true },
  },
  {
    "<leader>gow",
    ":Octohub web repo<CR>",
    mode = "n",
    desc = "Open Repo in Browser",
    { noremap = true, silent = true },
  },
}

return keys
