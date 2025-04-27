-- Add to lua/plugins/ui.lua
return {
  {
    "romgrk/barbar.nvim",
    keys = {
      { "<A-,>", "<cmd>BufferPrevious<cr>", desc = "Prev tab" },
      { "<A-.>", "<cmd>BufferNext<cr>", desc = "Next tab" },
      { "<A-1>", "<cmd>BufferGoto 1<cr>", desc = "Tab 1" },
      { "<A-2>", "<cmd>BufferGoto 2<cr>", desc = "Tab 2" },
      -- ... up to 9
    },
    opts = {
      animation = true,
      tabpages = true,
    },
  },
}
