return {
  -- ========================
  -- HTML/XML/JSX Tag Autoclosing
  -- ========================
  {
    "windwp/nvim-ts-autotag",
    ft = { "html", "javascriptreact", "typescriptreact", "svelte", "vue" },
    opts = {
      enable_close_on_slash = false,
      enable_rename = true,
      enable_close = true,
      filetypes = {
        "html",
        "javascriptreact",
        "typescriptreact",
        "svelte",
        "vue",
        "markdown", -- For MDX support
      },
    },
  },

  -- ========================
  -- CSS/Color Highlighting
  -- ========================
  {
    "NvChad/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      user_default_options = {
        mode = "background", -- Nord-friendly display
        names = false, -- Disable color names
        tailwind = true,
        RGB = true, -- #RRGGBB
        RRGGBBAA = true, -- #RRGGBBAA
        rgb_fn = true, -- CSS rgb()/rgba()
        hsl_fn = true, -- CSS hsl()/hsla()
        css = true, -- Enable CSS parsing
        css_fn = true, -- Enable CSS function parsing
      },
      filetypes = {
        "css",
        "scss",
        "less",
        "html",
        "javascriptreact",
        "typescriptreact",
        "vue",
        "svelte",
      },
    },
  },

  -- ========================
  -- Emmet for HTML/CSS (Optional)
  -- ========================
  {
    "mattn/emmet-vim",
    ft = { "html", "css", "javascriptreact", "typescriptreact", "svelte", "vue" },
    init = function()
      -- Custom emmet expansions for Nord-friendly JSX
      vim.g.user_emmet_settings = {
        javascript = {
          extends = "jsx",
          quote_char = "'", -- Nord uses single quotes
        },
        typescript = {
          extends = "tsx",
          quote_char = "'",
        },
      }
    end,
  },
}
