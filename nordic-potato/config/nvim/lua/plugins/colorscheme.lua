return {
  {
    "shaunsingh/nord.nvim",
    lazy = false, -- Load immediately (not lazy-loaded)
    priority = 1000, -- High priority to ensure it loads first
    config = function()
      vim.cmd.colorscheme("nord") -- Apply the theme
    end,
  },
}
