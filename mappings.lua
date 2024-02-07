-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- Custom map
    ["QQ"] = { "<cmd>quit<cr>", desc = "Quit" },
    ["WW"] = { "<cmd>write<cr>", desc = "Write" },
    ["!!"] = { "<cmd>qa!<cr>", desc = "Write" },

    ["<leader>s"] = { name = "Search and Replace" },
    ["<leader>ss"] = { ":%s/", desc = "Search and Replace RegExp" },

    ["<leader>r"] = { name = "Replace current word" },
    ["<leader>rw"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Replace current word" },
    ["<Tab>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
    ["<S-Tab>"] = { "<cmd>bprev<cr>", desc = "Prev buffer" },

    -- Custom navigation
    ["<C-d>"] = { "<C-d>zz", desc = "Half page jump down" },
    ["<C-u>"] = { "<C-u>zz", desc = "Half page jump up" },
    ["<C-f>"] = { "<C-f>zz", desc = "Page jump down" },
    ["<C-b>"] = { "<C-b>zz", desc = "Page jump up" },
    ["<C-k>"] = { "10k", desc = "Fast scroll up" },
    ["<C-Up>"] = { "10k", desc = "Fast scroll up" },
    ["<C-j>"] = { "10j", desc = "Fast scroll down" },
    ["<C-Down>"] = { "10j", desc = "Fast scroll down" },

    -- Open Gihub Repository
    ["gh"] = { "<cmd>OpenGithubRepo<cr>", desc = "Open Github Repo" },

    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    [">"] = { ">gv", desc = "Shift text right" },
    ["<"] = { "<gv", desc = "Shift text left" },
    ["<Tab>"] = { ">gv", desc = "Shift text right" },
    ["<S-Tab>"] = { "<gv", desc = "Shift text left" },
    ["J"] = { ":m '>+1<CR>gv=gv", desc = "Move selected block up" },
    ["<S-Down>"] = { ":m '>+1<CR>gv=gv", desc = "Move selected block down" },
    ["K"] = { ":m '<-2<CR>gv=gv", desc = "Move selected block down" },
    ["<S-Up>"] = { ":m '<-2<CR>gv=gv", desc = "Move selected block up" },
    -- ["<leader>c"] = { [["_c]], desc = "Change without yanking content" },
    -- ["<leader>d"] = { [["_d]], desc = "Delete without yanking content" },
  },
}
