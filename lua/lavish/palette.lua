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
            fg2 = "#767274",
            fg3 = "#AEA7A7",
            fg4 = "#D8D3D0",
            fg5 = "#EFEDEA",
        },
        bold = {
            red = "#C95652",
            yellow = "#E8AC60",
            green = "#88984A",
            cyan = "#759B95",
            blue = "#6093AA",
            magenta = "#C87BA5",
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
            red = "#e3cdc8",
            yellow = "#f5e3c9",
            green = "#dbdfd3",
            cyan = "#dde9e9",
            blue = "#e0e8f2",
            magenta = "#FEE9F3",
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
            fg2 = "#9C9994",
            fg3 = "#756C6C",
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
            red = "#432224",
            yellow = "#49402e",
            green = "#222b22",
            cyan = "#252d2d",
            blue = "#232830",
            magenta = "#312430",
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
