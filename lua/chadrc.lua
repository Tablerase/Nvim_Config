-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {
	options = {
    -- general options
    general = {
      ui_notifications = true, -- enable/disable notifications
      ui_notifications_timeout = 3000, -- timeout for notifications in ms
      ui_notifications_level = "info", -- level of notifications to show
      ui_notifications_max_width = 80, -- max width of notifications
    },
    -- lsp options
    lsp = {
      enable = true, -- enable/disable LSP
      auto_format = true, -- auto format on save
      diagnostics = {
      virtual_text = true, -- show diagnostics as virtual text
      signs = true, -- show diagnostic signs in the gutter
      underline = true, -- underline diagnostics
      },
    },
  },
}

M.base46 = {
	theme = "penumbra_light",
  theme_toggle = {"penumbra_light", "penumbra_dark"},

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
--}

return M
