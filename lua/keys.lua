--[[ keys.lua ]]

-- map('n', '<Leader>n', [[:NvimTreeToggle<CR>]], { silent=true })
-- map('n', '<Leader>l', [[:IndentLinesToggle<CR>]])
-- map('n', '<Leader>t', [[:TagbarToggle<CR>]])
-- map('n', '<Leader>ff', [[:Telescope find_files<CR>]])

local wk = require("which-key")

wk.register({
    f = {
        name = "file", -- optional group name
        f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" }, -- additional options for creating the keymap
        n = { "New File" }, -- just a label. don't create any mapping
        e = "Edit File", -- same as above
        ["1"] = "which_key_ignore",  -- special label to hide it in the popup
        b = { "<cmd>Telescope buffers<cr>", "Open Buffers" } -- you can also pass functions!
    },
    c = {
        name = "commands",
        c = {"<cmd>Cheatsheet<cr>", "Cheatsheet"}
    },
    d = {
        name = "display",
        l = {"<cmd>IndentLinesToggle<cr>", "Indent Lines"},
        s = {"<cmd>NvimTreeToggle<cr>", "Sidebar"}
    },
    t = {"<cmd>FloatermToggle<cr>", "Terminal"}
}, { prefix = "<leader>" })

