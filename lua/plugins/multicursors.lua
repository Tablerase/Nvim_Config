-- Multi cursor: https://github.com/smoka7/multicursors.nvim
return {
  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvimtools/hydra.nvim",
    },
    opts = {},
    cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
    keys = {
      {
        mode = { "v", "n" },
        "<Leader>mc",
        "<cmd>MCstart<cr>",
        desc = "MultiCursor Create a selection for selected text or word under the cursor",
      },
    },
  },
}
