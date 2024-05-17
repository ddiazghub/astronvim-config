-- Mapping data with "desc" stored directly by vim.keymap.set().
-- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
local M = {}

-- Global mappings
M.global = {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<Leader>bD"] = {
      function()
        require("astroui.status.heirline").buffer_picker(function(bufnr) require("astrocore.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with just a `desc` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<Leader>b"] = { desc = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- Show alpha dashboard if all buffers were closed
    ["<leader>c"] = {
      function()
        require("astrocore.buffer").close(0)
        local bufs = vim.fn.getbufinfo { buflisted = true }

        if require("astrocore").is_available "alpha-nvim" and not bufs[2] then vim.cmd "Alpha" end
      end,
      desc = "Close buffer",
    },

    ["<C-Z>"] = { "u", desc = "Undo" },
    ["<C-Y>"] = { "<C-r>", desc = "Redo" },
    ["<C-C>"] = { "<Cmd>%y<CR>", desc = "Copy all lines in buffer" },
    ["<C-D>"] = { "<C-d>zz", desc = "Half page jump down" },
    ["<C-U>"] = { "<C-u>zz", desc = "Half page jump up" },
    ["<C-F>"] = { "<C-f>zz", desc = "Page jump down" },
    ["<C-B>"] = { "<C-b>zz", desc = "Page jump up" },
    ["<S-Down>"] = { "<C-d>zz", desc = "Page jump down" },
    ["<S-Up>"] = { "<C-u>zz", desc = "Page jump up" },
    ["n"] = { "nzzzv", desc = "Seek next search term" },
    ["N"] = { "Nzzzv", desc = "Seek next search term backwards" },
    ["<C-K>"] = { "10k", desc = "Fast scroll up" },
    ["<C-Up>"] = { "10k", desc = "Fast scroll up" },
    ["<C-J>"] = { "10j", desc = "Fast scroll down" },
    ["<C-Down>"] = { "10j", desc = "Fast scroll down" },
  },
  i = {
    ["<C-Z>"] = { "<C-o>u", desc = "Undo" },
    ["<C-Y>"] = { "<C-o><C-r>", desc = "Redo" },
    ["<C-V>"] = { "<Esc>pi", desc = "Paste" },
  },
  v = {
    [">"] = { ">gv", desc = "Shift text right" },
    ["<"] = { "<gv", desc = "Shift text left" },
    ["<C-C>"] = { "y", desc = "Copy selection" },
    ["<C-K>"] = { "10k", desc = "Fast scroll up" },
    ["<C-J>"] = { "10j", desc = "Fast scroll down" },
  },
  x = {
    ["C-V"] = { "p", desc = "Paste copied content and replace selection" },
    ["<C-K>"] = { "10k", desc = "Fast scroll up" },
    ["<C-O>"] = { "10j", desc = "Fast scroll down" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}

-- Mappings to be set up on attaching of a language server
M.lsp = {
  n = {
    gl = { function() vim.diagnostic.open_float() end, desc = "Hover diagnostics" },
    -- a `cond` key can provided as the string of a server capability to be required to attach, or a function with `client` and `bufnr` parameters from the `on_attach` that returns a boolean
    -- gD = {
    --   function() vim.lsp.buf.declaration() end,
    --   desc = "Declaration of current symbol",
    --   cond = "textDocument/declaration",
    -- },
    -- ["<Leader>uY"] = {
    --   function() require("astrolsp.toggles").buffer_semantic_tokens() end,
    --   desc = "Toggle LSP semantic highlight (buffer)",
    --   cond = function(client) return client.server_capabilities.semanticTokensProvider and vim.lsp.semantic_tokens end,
    -- },
    gs = { "<CMD>TSToolsGoToSourceDefinition<CR>", desc = "Go to source definition (Typescript)" },
  },
}

return M
