return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  { import = "astrocommunity.pack.lua", enabled = true },
  { import = "astrocommunity.pack.rust", enabled = true },
  { import = "astrocommunity.pack.toml", enabled = true },
  { import = "astrocommunity.pack.go", enabled = true },
  { import = "astrocommunity.pack.yaml", enabled = true },
  { import = "astrocommunity.pack.markdown", enabled = false },
  { import = "astrocommunity.pack.json", enabled = false },
  { import = "astrocommunity.pack.bash", enabled = false },
  { import = "astrocommunity.pack.toml", enabled = false },
  { import = "astrocommunity.lsp.lsp-signature-nvim", enabled = true }, -- parameter prompt

  -- Debug
  { import = "astrocommunity.debugging.nvim-dap-virtual-text", enabled = true },
  { import = "astrocommunity.debugging.persistent-breakpoints-nvim", enabled = true },

  { import = "astrocommunity.programming-language-support.rest-nvim", enabled = false },

  -- Colorschemes
  { import = "astrocommunity.colorscheme.catppuccin", enabled = true },

  -- AI Autocomplete - codeium
  { import = "astrocommunity.completion.codeium-vim", enabled = true },

  -- Comment
  { import = "astrocommunity.comment.mini-comment", enabled = false },

  -- Editing
  { import = "astrocommunity.editing-support.zen-mode-nvim", enabled = true },

  -- Themes
  -- {
  --   "Mofiqul/vscode.nvim",
  --   lazy = false,
  --   config = function()
  --     vim.g.background = "light"
  --     require("vscode").setup {
  --       itatlic_comments = true,
  --       disable_nvimtree_bg = true,
  --     }
  --   end,
  -- },
}
