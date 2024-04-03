-- Env variables needed for the nvim session should be set here
local helpers = require("helpers")

local M = {}

if helpers.is_macos() then
  M.DYLD_LIBRARY_PATH = vim.fn.system("brew --prefix") .. "/lib"
end

return M
