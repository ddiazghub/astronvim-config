local M = {}

M.is_windows = function () return vim.uv.os_uname() == "Windows_NT" end
M.is_macos = function () return vim.uv.os_uname() == "Darwin" end
M.is_nightly = function () return vim.fn.has "nvim-0.10" == 1 end

return M
