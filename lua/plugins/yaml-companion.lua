return {
    {
       "someone-stole-my-name/yaml-companion.nvim",
        dependencies = { 
                "nvim-lua/plenary.nvim", 
                "neovim/nvim-lspconfig",
                "b0o/schemastore.nvim", 
                "nvim-telescope/telescope.nvim" 
        },
        config = function()
            require("configs.yaml-companion")
        end,
        keys = {
            {
                "<Leader>sy",
                "<cmd>Telescope yaml_schema<cr>",
                desc = "Search yaml schema from SchemaStore",
            },
        },
    }
}
