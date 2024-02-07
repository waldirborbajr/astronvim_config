return {
  {
    "stevearc/conform.nvim",
    event = "VeryLazy",
    keys = {
      -- stylua: ignore
      { '=', function() require('conform').format { async = true, lsp_fallback = true } end, mode = '', desc = 'Format buffer' },
    },
    opts = {
      format_on_save = {
        -- These options will be passed to conform.format()
        async = false,
        timeout_ms = 500,
        quiet = true,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { "stylua" },
        go = { "gofmt", "gofumpt", "goimports", "golines" },
        markdown = { "prettier" },
        json = { "prettierd" },
        yaml = { "prettierd" },
        rust = { "rustfmt" },
        toml = { "taplo" },
        sh = { "shfmt" },
        zsh = { "shfmt" },
        bash = { "shfmt" },
        -- Missing Markdownlint
        ["*"] = { "trim_whitespace", "trim_newlines" },
      },
      formatters = {
        shfmt = {
          prepend_args = { "-i", "2", "-ci" },
        },
        beautysh = {
          prepend_args = { "-i", "2" },
        },
      },
    },
  },
}
