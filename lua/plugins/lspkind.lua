return {
  "onsails/lspkind.nvim",
  opts = {
    preset = "default",
    mode = "symbol_text",
    symbol_map = {
      Array = "󰅪",
      Boolean = "",
      Class = "󰌗",
      Constructor = "",
      Key = "",
      Namespace = "",
      Null = "",
      Number = "",
      Object = "",
      Package = "",
      Property = "",
      Reference = "",
      Snippet = "",
      String = "",
      TypeParameter = "󰊄",
      Unit = "",
    },
    menu = {
      buffer = "[Buffer]",
      nvim_lsp = "[LSP]",
      nvim_lua = "[Lua]",
      luasnip = "[Snip]",
      path = "[Path]",
      cmdline = "[Cmd]",
      ["vim-dadbod-completion"] = "[DB]",
      -- You can add more sources here
    },
  },
}
