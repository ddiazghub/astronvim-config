return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      mappings = {
        ["<C-j>"] = function ()
          vim.cmd(":normal! 10j")
        end,
        ["<C-k>"] = function ()
          vim.cmd(":normal! 10k")
        end,
      },
    },
  },
}
