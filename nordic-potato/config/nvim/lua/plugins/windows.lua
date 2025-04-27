return {
  {
    "mrjones2014/smart-splits.nvim",
    config = function()
      require("smart-splits").setup({
        -- Ignore these filetypes when resizing
        ignored_filetypes = { "nofile", "quickfix", "qf", "prompt" },
        -- Whether to wrap to opposite side when cursor reaches edge
        multiplexer_integration = nil,
      })
    end,
    keys = {
      -- Arrow keys for navigation
      {
        "<C-h>",
        function()
          require("smart-splits").move_cursor_left()
        end,
      },
      {
        "<C-j>",
        function()
          require("smart-splits").move_cursor_down()
        end,
      },
      {
        "<C-k>",
        function()
          require("smart-splits").move_cursor_up()
        end,
      },
      {
        "<C-l>",
        function()
          require("smart-splits").move_cursor_right()
        end,
      },

      -- Resize with Ctrl+Arrow
      {
        "<C-Up>",
        function()
          require("smart-splits").resize_up()
        end,
      },
      {
        "<C-Down>",
        function()
          require("smart-splits").resize_down()
        end,
      },
      {
        "<C-Left>",
        function()
          require("smart-splits").resize_left()
        end,
      },
      {
        "<C-Right>",
        function()
          require("smart-splits").resize_right()
        end,
      },
    },
  },
}
