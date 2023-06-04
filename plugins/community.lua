return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  -- Frontend Development
  { import = "astrocommunity.pack.tailwindcss",       enabled = true },
  { import = "astrocommunity.pack.typescript",        enabled = true },
  { import = "astrocommunity.pack.vue",               enabled = true },
  { import = "astrocommunity.pack.json",              enabled = true },
  -- Backend Development
  { import = "astrocommunity.pack.rust",              enabled = true },
  { import = "astrocommunity.pack.go",                enabled = true },
  { import = "astrocommunity.pack.yaml",              enabled = true },
  { import = "astrocommunity.pack.prisma",            enabled = true },
  { import = "astrocommunity.pack.lua",               enabled = true },
  -- Theme
  { import = "astrocommunity.colorscheme.catppuccin", enabled = true },
  -- Comment
  { import = "astrocommunity.comment.mini-comment" },
  {
    "mini.comment",
    version = false,
    config = function()
      require("mini.comment").setup {
        mappings = {
          -- C-/ to comment
          comment_line = "<C-_>",
          comment = "<C-_>",
        },
        options = {
          ignore_blank_line = true,
        },
      }
    end,
  },

  -- catppuccin
  -- {
  --   "catppuccin",
  --    init = function() vim.cmd [[colorscheme catppuccin-frappe]] end,
  -- },
}
