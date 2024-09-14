local M = {}

local DEFAULT_CONFIG = {
    fallback_background = "light",
    style = {
        transparent = false,
        italic_comments = false,
        italic_strings = false,
    },
    palette_overrides = {},
    ---@diagnostic disable-next-line: unused-local
    scheme_overrides = function(colors, style)
        return {}
    end,
}

---@type table
local current_config = DEFAULT_CONFIG

---Get the current config table
---@return table
M.get = function()
    return current_config
end

---Set the current config to the default merged with `opts`
---@param opts table|nil
M.set = function(opts)
    current_config = vim.tbl_deep_extend("force", DEFAULT_CONFIG, opts or {})
end

return M
