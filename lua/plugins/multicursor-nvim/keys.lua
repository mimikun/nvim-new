---@type LazyKeysSpec[]
local keys = {
    -- Add or skip cursor above/below the main cursor.
    {
        "<up>",
        function()
            require("multicursor-nvim").lineAddCursor(-1)
        end,
        mode = { "n", "x" },
    },
    {
        "<down>",
        function()
            require("multicursor-nvim").lineAddCursor(1)
        end,
        mode = { "n", "x" },
    },
    {
        "<leader><up>",
        function()
            require("multicursor-nvim").lineSkipCursor(-1)
        end,
        mode = { "n", "x" },
    },
    {
        "<leader><down>",
        function()
            require("multicursor-nvim").lineSkipCursor(1)
        end,
        mode = { "n", "x" },
    },
    -- Add or skip adding a new cursor by matching word/selection
    {
        "<leader>n",
        function()
            require("multicursor-nvim").matchAddCursor(1)
        end,
        mode = { "n", "x" },
    },
    {
        "<leader>s",
        function()
            require("multicursor-nvim").matchSkipCursor(1)
        end,
        mode = { "n", "x" },
    },
    {
        "<leader>N",
        function()
            require("multicursor-nvim").matchAddCursor(-1)
        end,
        mode = { "n", "x" },
    },
    {
        "<leader>S",
        function()
            require("multicursor-nvim").matchSkipCursor(-1)
        end,
        mode = { "n", "x" },
    },
    -- Add and remove cursors with control + left click.
    {
        "<c-leftmouse>",
        function()
            require("multicursor-nvim").handleMouse()
        end,
        mode = "n",
    },
    {
        "<c-leftdrag>",
        function()
            require("multicursor-nvim").handleMouseDrag()
        end,
        mode = "n",
    },
    {
        "<c-leftrelease>",
        function()
            require("multicursor-nvim").handleMouseRelease()
        end,
        mode = "n",
    },
    -- Disable and enable cursors.
    {
        "<c-q>",
        function()
            require("multicursor-nvim").toggleCursor()
        end,
        mode = { "n", "x" },
    },
    -- NOTE: Other

    -- Pressing `gaip` will add a cursor on each line of a paragraph.
    {
        "ga",
        function()
            require("multicursor-nvim").addCursorOperator()
        end,
        mode = "n",
    },
    -- Clone every cursor and disable the originals.
    {
        "<leader><c-q>",
        function()
            require("multicursor-nvim").duplicateCursors()
        end,
        mode = { "n", "x" },
    },
    -- Align cursor columns.
    {
        "<leader>a",
        function()
            require("multicursor-nvim").alignCursors()
        end,
        mode = "n",
    },
    -- Split visual selections by regex.
    {
        "S",
        function()
            require("multicursor-nvim").splitCursors()
        end,
        mode = "x",
    },
    -- match new cursors within visual selections by regex.
    {
        "M",
        function()
            require("multicursor-nvim").matchCursors()
        end,
        mode = "x",
    },
    -- bring back cursors if you accidentally clear them
    {
        "<leader>gv",
        function()
            require("multicursor-nvim").restoreCursors()
        end,
        mode = "n",
    },
    -- Add a cursor for all matches of cursor word/selection in the document.
    {
        "<leader>A",
        function()
            require("multicursor-nvim").matchAllAddCursors()
        end,
        mode = { "n", "x" },
    },
    -- Rotate the text contained in each visual selection between cursors.
    {
        "<leader>t",
        function()
            require("multicursor-nvim").transposeCursors(1)
        end,
        mode = "x",
    },
    {
        "<leader>T",
        function()
            require("multicursor-nvim").transposeCursors(-1)
        end,
        mode = "x",
    },
    -- Append/insert for each line of visual selections.
    -- Similar to block selection insertion.
    {
        "I",
        function()
            require("multicursor-nvim").insertVisual()
        end,
        mode = "x",
    },
    {
        "A",
        function()
            require("multicursor-nvim").appendVisual()
        end,
        mode = "x",
    },
    -- Increment/decrement sequences, treaing all cursors as one sequence.
    {
        "g<c-a>",
        function()
            require("multicursor-nvim").sequenceIncrement()
        end,
        mode = { "n", "x" },
    },
    {
        "g<c-x>",
        function()
            require("multicursor-nvim").sequenceDecrement()
        end,
        mode = { "n", "x" },
    },
    -- Add a cursor and jump to the next/previous search result.
    {
        "<leader>/n",
        function()
            require("multicursor-nvim").searchAddCursor(1)
        end,
        mode = "n",
    },
    {
        "<leader>/N",
        function()
            require("multicursor-nvim").searchAddCursor(-1)
        end,
        mode = "n",
    },
    -- Jump to the next/previous search result without adding a cursor.
    {
        "<leader>/s",
        function()
            require("multicursor-nvim").searchSkipCursor(1)
        end,
        mode = "n",
    },
    {
        "<leader>/S",
        function()
            require("multicursor-nvim").searchSkipCursor(-1)
        end,
        mode = "n",
    },
    -- Add a cursor to every search result in the buffer.
    {
        "<leader>/A",
        function()
            require("multicursor-nvim").searchAllAddCursors()
        end,
        mode = "n",
    },
    -- Pressing `<leader>miwap` will create a cursor in every match of the
    -- string captured by `iw` inside range `ap`.
    -- This action is highly customizable, see `:h multicursor-operator`.
    {
        "<leader>m",
        function()
            require("multicursor-nvim").operator()
        end,
        mode = { "n", "x" },
    },
    -- Add or skip adding a new cursor by matching diagnostics.
    {
        "]d",
        function()
            require("multicursor-nvim").diagnosticAddCursor(1)
        end,
        mode = { "n", "x" },
    },
    {
        "[d",
        function()
            require("multicursor-nvim").diagnosticAddCursor(-1)
        end,
        mode = { "n", "x" },
    },
    {
        "]s",
        function()
            require("multicursor-nvim").diagnosticSkipCursor(1)
        end,
        mode = { "n", "x" },
    },
    {
        "[S",
        function()
            require("multicursor-nvim").diagnosticSkipCursor(-1)
        end,
        mode = { "n", "x" },
    },
    -- Press `mdip` to add a cursor for every error diagnostic in the range `ip`.
    {
        "md",
        function()
            -- See `:h vim.diagnostic.GetOpts`.
            require("multicursor-nvim").diagnosticMatchCursors({ severity = vim.diagnostic.severity.ERROR })
        end,
        mode = { "n", "x" },
    },
}

return keys
