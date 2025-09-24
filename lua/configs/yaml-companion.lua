local cfg = require("yaml-companion").setup {
  -- detect k8s schemas based on file content
  builtin_matchers = {
    kubernetes = { enabled = true }
  },

  lspconfig = {
    settings = {
      yaml = {
        validate = true,
        schemaStore = {
          enable = false,
          url = ""
        },

        -- schemas from store, matched by filename
        -- loaded automatically
        -- Doc: https://github.com/b0o/SchemaStore.nvim
        schemas = require('schemastore').yaml.schemas()
      }
    }
  }
}

vim.lsp.config(yamlls, cfg)

require("telescope").load_extension("yaml_schema")
