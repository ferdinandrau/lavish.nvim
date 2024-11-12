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
                .. '" is not a valid argument. Please use "light", "dark" or `nil` (no argument).',
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

    local colors = palette.get()[variant]

    if variant == "light" then
        vim.g.terminal_color_0 = colors.base.fg1
        vim.g.terminal_color_8 = colors.base.fg2
        vim.g.terminal_color_7 = colors.base.bg2
        vim.g.terminal_color_15 = colors.base.bg1
    else
        vim.g.terminal_color_0 = colors.base.bg1
        vim.g.terminal_color_8 = colors.base.bg2
        vim.g.terminal_color_7 = colors.base.fg2
        vim.g.terminal_color_15 = colors.base.fg1
    end

    vim.g.terminal_color_1 = colors.normal.red
    vim.g.terminal_color_9 = colors.bold.red
    vim.g.terminal_color_2 = colors.normal.green
    vim.g.terminal_color_10 = colors.bold.green
    vim.g.terminal_color_3 = colors.normal.yellow
    vim.g.terminal_color_11 = colors.bold.yellow
    vim.g.terminal_color_4 = colors.normal.blue
    vim.g.terminal_color_12 = colors.bold.blue
    vim.g.terminal_color_5 = colors.normal.magenta
    vim.g.terminal_color_13 = colors.bold.magenta
    vim.g.terminal_color_6 = colors.normal.cyan
    vim.g.terminal_color_14 = colors.bold.cyan
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
