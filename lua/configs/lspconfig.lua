require("nvchad.configs.lspconfig").defaults()

-- Config link: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md  
local servers = { "html", "cssls", "clangd", "pyright", "bashls", "ts_ls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
