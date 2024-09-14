local palette = require("lavish.palette")
local scheme = require("lavish.scheme")
local config = require("lavish.config")

local M = {}

---@param version string|nil
M.apply = function(version)
    local variant = ""
    local colorscheme_name = ""
    local background = vim.opt.background:get()
    local config_tbl = config.get()

    if version == nil then
        colorscheme_name = "lavish"
        if background == "" then
            variant = config_tbl.fallback_background
        else
            variant = background
        end
    elseif version == "light" then
        colorscheme_name = "lavish-light"
        variant = "light"
    elseif version == "dark" then
        colorscheme_name = "lavish-dark"
        variant = "dark"
    else
        vim.notify(
            'lavish.nvim in function `apply()`: "'
                .. version
                .. '" is not a valid argument. Please use "light", "dark" or `nil`.',
            4
        )
        return
    end

    vim.cmd.highlight("clear")
    vim.cmd.syntax("reset")
    vim.g.colors_name = colorscheme_name

    vim.opt.guicursor:append("a:Cursor/lCursor")

    local groups_tbl = scheme.get()[variant]
    for group, opts in pairs(groups_tbl) do
        vim.api.nvim_set_hl(0, group, opts)
    end

    -- TODO: set terminal colors
end

---@param opts table|nil
M.setup = function(opts)
    -- TODO: validate `opts`
    config.set(opts)
    local config_tbl = config.get()
    palette.set(config_tbl.palette_overrides)
    scheme.set(config_tbl.scheme_overrides)
end

return M
