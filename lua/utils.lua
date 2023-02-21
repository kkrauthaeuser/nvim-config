-- Our lua/utils.lua file

local M = {}

function M.map(mode, lhs, rhs, opts)
    print('test')
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return M
