-- Customize None-ls sources
local helpers = require("helpers")

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"
    local b = null_ls.builtins

    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,
    }

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- webdev stuff
      b.formatting.prettierd.with {
        filetypes = {
          "html",
          "htmldjango",
          "css",
          "yaml",
          "javascript",
          "typescript",
          "javascriptreact",
          "typescriptreact",
          "json",
          "jsonc",
          "markdown",
        },
      },

      -- b.diagnostics.eslint_d.with {},
      -- b.code_actions.eslint_d.with {},

      -- Lua
      -- b.formatting.stylua,

      -- c - cpp
      -- b.formatting.clang_format.with { filetypes = { "c", "cpp" } },

      -- c#
      -- b.formatting.csharpier,

      -- python
      b.diagnostics.mypy.with {
        extra_args = function()
          local path = ""
          local venv = os.getenv "VIRTUAL_ENV"

          if venv then
            path = helpers.is_windows() and venv .. "\\Scripts\\python.exe" or venv .. "/bin/python3"
          else
            if helpers.is_windows() then
              path = os.getenv "LOCALAPPDATA" .. "\\Programs\\Python\\Python311\\python.exe"
            else
              path = "/usr/bin/python3"
            end
          end

          return { "--python-executable", path }
        end,
      },

      -- b.diagnostics.ruff.with { extra_args = { "--ignore=E501" } },
      -- b.formatting.black,

      -- rust
      -- b.formatting.rustfmt,

      -- dart/flutter
      -- b.formatting.dart_format.with { filetypes = { "dart" } },
    }

    return config -- return final config table
  end,
}
