local helpers = require("helpers")

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.
-- @type LazySpec
local M = {
  "AstroNvim/astrocommunity",

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  -- { import = "astrocommunity.colorscheme.oxocarbon-nvim" },
  { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  -- { import = "astrocommunity.colorscheme.nightfox-nvim" },
  -- { import = "astrocommunity.colorscheme.kanagawa-nvim" },

  { import = "astrocommunity.recipes.heirline-vscode-winbar" },
  { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  { import = "astrocommunity.recipes.vscode-icons" },

  { import = "astrocommunity.bars-and-lines.vim-illuminate" },

  { import = "astrocommunity.diagnostics.lsp_lines-nvim" },

  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },

  { import = "astrocommunity.indent.indent-blankline-nvim" },
  { import = "astrocommunity.indent.mini-indentscope" },

  -- { import = "astrocommunity.lsp.inc-rename-nvim" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  { import = "astrocommunity.lsp.lsp-lens-nvim" },
  { import = "astrocommunity.lsp.lsplinks-nvim" },

  { import = "astrocommunity.test.neotest" },

  { import = "astrocommunity.completion.cmp-cmdline" },

  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },

  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.neogen" },

  { import = "astrocommunity.markdown-and-latex.glow-nvim" },

  { import = "astrocommunity.search.nvim-hlslens" },

  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.full-dadbod" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },

  -- import/override with your plugins folder
}

if not helpers.is_nightly() then
  table.insert(M, { import = "astrocommunity.lsp.lsp-inlayhints-nvim" })
end

if helpers.is_macos() then
  table.insert(M, { import = "astrocommunity.media.image-nvim" })
end

return M
