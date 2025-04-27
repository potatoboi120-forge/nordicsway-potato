return {
  "MeanderingProgrammer/render-markdown.nvim", -- OR 'scottmckendry/markdown.nvim'
  ft = "markdown",
  dependencies = {
    "nvim-treesitter/nvim-treesitter", -- Required for parsing
    "echasnovski/mini.nvim", -- For icons (alternative: 'nvim-tree/nvim-web-devicons')
    "iamcco/markdown-preview.nvim", -- Live preview
    "jakewvincent/mkdnflow.nvim", -- Enhanced navigation
  },
  config = function()
    require("render-markdown").setup({ -- Replace with 'markdown' for scottmckendry's plugin
      -- Core Features
      enabled = true,
      max_file_size = 10, -- MB
      render_modes = { "n", "c", "t" }, -- Render in normal/command/terminal modes

      -- Icons & Visuals :cite[1]:cite[6]
      preset = "obsidian", -- Mimics Obsidian's UI
      anti_conceal = {
        enabled = true,
        ignore = { code_background = true, sign = true }, -- Keep these visible
      },
      padding = {
        highlight = "Normal", -- Match background
      },

      -- Headers :cite[2]
      heading = {
        icons = { "󰉫", "󰉬", "󰉭", "󰉮", "󰉯", "󰉰" }, -- Nerd Font icons for H1-H6
        signs = { "", "", "", "", "", "" }, -- Sign column icons
        backgrounds = { -- Custom highlights
          "MarkdownH1Bg",
          "MarkdownH2Bg",
          "MarkdownH3Bg",
          "MarkdownH4Bg",
          "MarkdownH5Bg",
          "MarkdownH6Bg",
        },
        foregrounds = { -- Text colors
          "MarkdownH1",
          "MarkdownH2",
          "MarkdownH3",
          "MarkdownH4",
          "MarkdownH5",
          "MarkdownH6",
        },
        width = "full", -- Full-width background
      },

      -- Code Blocks :cite[1]
      code = {
        style = "full", -- Icons + language labels
        left_pad = 2, -- Left padding
        language_icons = {
          python = "",
          lua = "",
          bash = "",
          javascript = "",
          html = "",
          css = "",
        },
      },

      -- Lists & TODOs :cite[1]:cite[5]
      list = {
        bullets = { "•", "◦", "▸", "▹" }, -- Nested bullet styles
        checkboxes = {
          unchecked = "󰄱",
          checked = "󰄲",
          partial = "󰄳",
        },
      },

      -- Links & Callouts :cite[1]:cite[5]
      link = {
        icon = "󰌹", -- Link icon
        highlight = "MarkdownLink",
      },
      callouts = { -- Obsidian-style callouts
        note = { icon = "󰎞", highlight = "MarkdownNote" },
        warning = { icon = "󰀪", highlight = "MarkdownWarning" },
      },

      -- Tables :cite[1]
      table = {
        border = "║", -- Custom border
        alignment_indicator = "↔", -- Shows column alignment
      },

      -- Math (LaTeX) :cite[1]:cite[2]
      latex = {
        enabled = true,
        converter = "latex2text", -- Requires pylatexenc
        position = "above", -- Render above the formula
      },

      -- Extras :cite[3]:cite[5]
      completions = { lsp = { enabled = true } }, -- LSP completions
      on_attach = function(bufnr)
        -- Keybindings for mkdnflow.nvim
        vim.keymap.set("n", "<CR>", "<Cmd>MkdnFollowLink<CR>", { buffer = bufnr })
        vim.keymap.set("n", "<leader>cn", "<Cmd>MkdnNewListItem<CR>", { buffer = bufnr })
      end,
    })

    -- Additional setup for markdown-preview.nvim :cite[4]
    vim.g.mkdp_theme = "dark" -- Dark mode preview
  end,
}
