local colors = require("lavish.palette").get().light

return {
    normal = {
        a = { bg = colors.base.fg2, fg = colors.base.bg1, gui = "bold" },
        b = { bg = colors.base.bg5, fg = colors.base.fg1 },
        c = { bg = colors.base.bg4, fg = colors.base.fg2 },
    },
    insert = {
        a = { bg = colors.normal.green, fg = colors.base.bg1, gui = "bold" },
        b = { bg = colors.base.bg5, fg = colors.base.fg1 },
        c = { bg = colors.base.bg4, fg = colors.base.fg2 },
    },
    visual = {
        a = { bg = colors.bright.yellow, fg = colors.base.bg1, gui = "bold" },
        b = { bg = colors.base.bg5, fg = colors.base.fg1 },
        c = { bg = colors.base.bg4, fg = colors.base.fg2 },
    },
    replace = {
        a = { bg = colors.normal.red, fg = colors.base.bg1, gui = "bold" },
        b = { bg = colors.base.bg5, fg = colors.base.fg1 },
        c = { bg = colors.base.bg4, fg = colors.base.fg2 },
    },
    command = {
        a = { bg = colors.normal.blue, fg = colors.base.bg1, gui = "bold" },
        b = { bg = colors.base.bg5, fg = colors.base.fg1 },
        c = { bg = colors.base.bg4, fg = colors.base.fg2 },
    },
    inactive = {
        a = { bg = colors.base.bg4, fg = colors.base.fg1, gui = "bold" },
        b = { bg = colors.base.bg4, fg = colors.base.fg1 },
        c = { bg = colors.base.bg4, fg = colors.base.fg2 },
    },
}
