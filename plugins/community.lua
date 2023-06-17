return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  -- Frontend Development
  { import = "astrocommunity.pack.html-css", enabled = true },
  { import = "astrocommunity.pack.tailwindcss", enabled = true },
  { import = "astrocommunity.pack.typescript", enabled = false },
  { import = "astrocommunity.pack.typescript-all-in-one", enabled = true },
  { import = "astrocommunity.pack.vue", enabled = true },
  { import = "astrocommunity.pack.json", enabled = true },
  -- Backend Development
  { import = "astrocommunity.pack.rust", enabled = false },
  { import = "astrocommunity.pack.toml", enabled = false },
  -- {
  --   "simrat39/rust-tools.nvim",
  --   opts = {
  --     tools = {
  --       hover_actions = {
  --         auto_focus = true,
  --       },
  --       inlay_hints = {
  --         auto = false,
  --       },
  --     },
  --     server = {
  --       on_attach = function(client, bufnr)
  --         -- override here. call lsp on attach and then add own custom logic.
  --         require("astronvim.utils.lsp").on_attach(client, bufnr)
  --         local rt = require "rust-tools"

  --         local utils = require "astronvim.utils"

  --         utils.set_mappings({
  --           n = {
  --             ["K"] = { rt.hover_actions.hover_actions, desc = "Rust Hover Actions" },
  --           },
  --         }, { buffer = bufnr })
  --       end,
  --     },
  --   },
  -- },
  { import = "astrocommunity.pack.go", enabled = true },
  { import = "astrocommunity.pack.yaml", enabled = true },
  { import = "astrocommunity.pack.prisma", enabled = true },
  { import = "astrocommunity.pack.lua", enabled = true },
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
