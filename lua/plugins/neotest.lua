return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/neotest-jest",
  },
  opts = function(_, opts)
    opts.adapters = {
      require "neotest-jest" {
        jestCommand = require("neotest-jest.jest-util").getJestCommand(vim.fn.expand "%:p:h") .. " --watch",
      },
    }
  end,
}
