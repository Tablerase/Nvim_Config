require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

-- Config link: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
local servers = {
  "ansiblels",
  "cssls",
  "clangd",
  "bashls",
  "html",
  "pyright",
  "ruby_lsp",
  "ts_ls",
  "yamlls"
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

vim.lsp.enable(servers)
-- read :h vim.lsp.config for changing options of lsp servers
