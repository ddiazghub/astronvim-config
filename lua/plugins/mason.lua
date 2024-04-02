-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        -- neovim stuff
        "lua_ls",
        "vimls",

        -- web dev stuff
        "cssls",
        "html",
        -- "vtsls",

        -- c/cpp stuff
        "clangd",

        -- toml stuff
        "taplo",

        -- python stuff
        "pyright",

        -- other
        "jsonls",
        "yamlls",

        -- bash
        "bashls",

        -- markdown
        "marksman",
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        -- neovim stuff
        "stylua",

        -- web dev stuff
        "prettierd",
        -- "eslint_d",

        -- c/cpp stuff
        -- "clang-format",

        -- python stuff
        -- "ruff",
        -- "black",
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "js",
        -- "codelldb",
        "python",
      })
    end,
  },
}
