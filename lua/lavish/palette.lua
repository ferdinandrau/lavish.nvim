local M = {}

local DEFAULT_PALETTE = {
    light = {
        base = {
            bg1 = "#FCFCFC",
            bg2 = "#F9F9F9",
            bg3 = "#F2F2F2",
            bg4 = "#EDEDED",
            bg5 = "#DDDAD7",
            fg1 = "#302D2F",
            fg2 = "#423E41",
            fg3 = "#969093",
            fg4 = "#D1CDCA",
            fg5 = "#EFEDEA",
        },
        bold = {
            red = "#C95652",
            yellow = "#E5A34E",
            green = "#88984A",
            cyan = "#759B95",
            blue = "#598FA6",
            magenta = "#C06798",
        },
        normal = {
            red = "#B64C49",
            yellow = "#D29A46",
            green = "#778743",
            cyan = "#5E877F",
            blue = "#507091",
            magenta = "#B26E97",
        },
        faint = {
            red = "#D47766",
            yellow = "#B59B7D",
            green = "#9FB95E",
            cyan = "#89B3B6",
            blue = "#93A7B3",
            magenta = "#D191AF",
        },
    },
    dark = {
        base = {
            bg1 = "#1D1D1D",
            bg2 = "#212121",
            bg3 = "#292929",
            bg4 = "#3B3939",
            bg5 = "#4C4748",
            fg1 = "#CBCBC6",
            fg2 = "#B5B4AF",
            fg3 = "#807D79",
            fg4 = "#4A4443",
            fg5 = "#2B2727",
        },
        bold = {
            red = "#D47766",
            yellow = "#EFC05E",
            green = "#9FB95E",
            cyan = "#89B3B6",
            blue = "#93A7B3",
            magenta = "#D191AF",
        },
        normal = {
            red = "#C55350",
            yellow = "#E09A49",
            green = "#88984A",
            cyan = "#759B95",
            blue = "#628B9D",
            magenta = "#B2719B",
        },
        faint = {
            red = "#7D2A2F",
            yellow = "#8B7449",
            green = "#233524",
            cyan = "#253333",
            blue = "#273142",
            magenta = "#422741",
        },
    },
}

---@type table|nil
local current_palette = nil

---Get the current color palette
---@return table
M.get = function()
    if current_palette == nil then
        M.set()
    end
    ---@type table
    return current_palette
end

---Set the current palette to the default merged with `overrides`
---@param overrides table|nil
M.set = function(overrides)
    current_palette = vim.tbl_deep_extend("force", DEFAULT_PALETTE, overrides or {})
end

return M
