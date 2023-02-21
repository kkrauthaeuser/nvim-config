-- [[ plug.lua ]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {                                              -- filesystem navigation
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'        -- filesystem icons
    }

    -- [[ Theme ]]
    use { 'mhinz/vim-startify' }                       -- start screen
    use {
        'nvim-lualine/lualine.nvim',                     -- statusline
        requires = {'nvim-tree/nvim-web-devicons',
            opt = true}
    }
    use { 'Mofiqul/dracula.nvim' }                     -- colorscheme

    -- [[ Util ]]
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    use {
        'sudormrfbin/cheatsheet.nvim',

        requires = {
            {'nvim-telescope/telescope.nvim'},
            {'nvim-lua/popup.nvim'},
            {'nvim-lua/plenary.nvim'},
        }
    }

    -- [[ Dev ]]
    use {
        'nvim-telescope/telescope.nvim',                 -- fuzzy finder
        requires = { 'nvim-lua/plenary.nvim',
            {'nvim-tree/nvim-web-devicons', opt = true}}
    }
    use { 'majutsushi/tagbar' }                        -- code structure
    use { 'Yggdroot/indentLine' }                      -- see indentation
    use { 'tpope/vim-fugitive' }                       -- git integration
    use { 'junegunn/gv.vim' }                          -- commit history
    use { 'windwp/nvim-autopairs' }                    -- auto close brackets, etc.

    use 'voldikss/vim-floaterm'

    -- [[ Coding Tools ]]
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'HiPhish/nvim-ts-rainbow2'
    use 'tpope/vim-surround'
    use 'haorenW1025/completion-nvim'
    use 'nvim-treesitter/completion-treesitter'

    -- [[ Languanges ]]
    use 'lervag/vimtex'
end)
