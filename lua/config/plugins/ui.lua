return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        opts = {
        window = {
            width = 24
        }
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        lazy = false,
    },
---------------------------------------------------------------------------------------------------
    {
        'akinsho/toggleterm.nvim',
        opts = {
            open_mapping = [[<c-t>]],
            autochdir = true,
            direction = 'horizontal',
            shell = "fish"
        },
    },
---------------------------------------------------------------------------------------------------
    {  
        'akinsho/bufferline.nvim', 
        version = "*", 
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function(_, opts)
            require("bufferline").setup(opts)
            -- Fix bufferline when restoring a session
            vim.api.nvim_create_autocmd({ "BufAdd", "BufDelete" }, {
            callback = function()
                vim.schedule(function()
                pcall(nvim_bufferline)
                end)
            end,
            })
        end,
    },
---------------------------------------------------------------------------------------------------
    { "folke/which-key.nvim",},
---------------------------------------------------------------------------------------------------
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {

        },
        config = function ()
            require('lualine').setup {
                options = {
                    theme = 'jellybeans',
                },
                sections = {
                    lualine_a = {'mode'},
                    lualine_b = {'branch', 'diff', 'diagnostics'},
                    lualine_c = {'location'},
                    lualine_x = {},
                    lualine_y = {'encoding', 'filetype'},
                    lualine_z = {},
                }
            }
        end
    },
---------------------------------------------------------------------------------------------------
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
}
