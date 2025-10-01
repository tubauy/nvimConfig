return {
    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
---------------------------------------------------------------------------------------------------
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },
---------------------------------------------------------------------------------------------------
    {
        "neovim/nvim-lspconfig",
    },
---------------------------------------------------------------------------------------------------
    {
        "mfussenegger/nvim-lint",
    }
}
