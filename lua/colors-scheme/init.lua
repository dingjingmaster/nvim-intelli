local util      = require('colors-scheme.util')
local theme     = require('colors-scheme.theme')
local config    = require('colors-scheme.config')

local M = {}

function M._load()
    M.load()
end

---@param opts Config|nil
function M.load()
    require("colors-scheme.config").extend()
    util.load(theme.setup())
end

M.setup = config.setup

-- keep for backward compatibility
M.colorscheme = M.load

return M

