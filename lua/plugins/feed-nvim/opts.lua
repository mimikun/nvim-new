---@module 'feed'
---@type feed.config
local opts = {
  feeds = {
    "https://neovim.io/news.xml",
  },

  ui = {
    order = {
      "date",
      "feed",
      "tags",
      "title",
    },
    feed = {
      width = 25,
    },
    tags = {
      width = 20,
    },
  },

  entry = {
    order = {
      "title",
      "author",
      "feed",
      "link",
      "date",
      "tags",
    },
    link = {},
    date = {},
    author = {},
    feed = {},
    tags = {},
    title = {},
  },

  winbar = {
    order = {
      "date",
      "feed",
      "tags",
      "title",
      "%=%<",
      "progress",
      "query",
      "last_updated",
    },
    date = {
      width = 10,
    },
    feed = {
      width = 25,
    },
    tags = {
      width = 20,
    },
    title = {
      width = "#",
    },
  },

  progress = {
    ---@type string "bar" | "mini.notify" | "snacks" | "fidget"
    backend = nil,
    ok = "ok",
    err = "err",
  },

  picker = {
    order = {
      "feed",
      "tags",
      "title",
    },
    feed = {
      width = 15,
    },
    tags = {
      width = 15,
    },
  },

  search = {
    default_query = "@2-weeks-ago +unread ",
    ---@type string "ascending" | "descending"
    sort_order = "descending",
    ignorecase = true,
  },

  protocol = {
    ---@type string "local" | "ttrss"
    backend = "local",
    ttrss = {
      url = nil,
      user = nil,
      password = nil,
    },
    ["local"] = {
      dir = vim.fn.stdpath("data") .. "/feed",
    },
  },

  options = {
    index = {
      wo = {
        signcolumn = "no",
        wrap = false,
        number = false,
        relativenumber = false,
        list = false,
        statuscolumn = " ",
        spell = false,
        conceallevel = 0,
      },
      bo = {
        filetype = "feed",
        swapfile = false,
        undolevels = -1,
        modifiable = false,
      },
    },

    entry = {
      wo = {
        signcolumn = "no",
        wrap = true,
        number = false,
        relativenumber = false,
        list = false,
        statuscolumn = " ",
        spell = false,
        conceallevel = 3,
        concealcursor = "nvc",
        foldmethod = "expr",
        foldlevel = 99,
        foldexpr = "v:lua.vim.treesitter.foldexpr()",
        foldtext = "",
        fillchars = "foldopen:,foldclose:,fold: ,foldsep: ",
      },
      bo = {
        filetype = "markdown",
        swapfile = false,
        undolevels = -1,
        modifiable = false,
      },
    },
  },
}

return opts
