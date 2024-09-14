local background = vim.opt.background:get()

if background == "light" then
    return require("lualine.themes.lavish-light")
elseif background == "dark" then
    return require("lualine.themes.lavish-dark")
else
    local fallback = require("lavish.config").get().fallback_background
    if fallback == "dark" then
        return require("lualine.themes.lavish-dark")
    else
        return require("lualine.themes.lavish-light")
    end
end
