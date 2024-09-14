local palette = require("lavish.palette")
local config = require("lavish.config")

local M = {}

---Return a table of highlight groups paired with their default highlights,
---populated with the passed `colors` and according to the passed `style`
---@param colors table
---@param style table
---@return table
local function fill_default(colors, style)
    return {
        --- :help highlight-groups ---
        ColorColumn = { bg = colors.base.bg2 },
        Conceal = { fg = colors.base.fg2 },
        CurSearch = { fg = colors.base.fg1, bg = colors.normal.yellow },
        Cursor = { fg = colors.base.bg1, bg = colors.base.fg1 },
        CursorColumn = { link = "ColorColumn" },
        CursorIM = { link = "Cursor" },
        CursorLine = { link = "ColorColumn" },
        CursorLineFold = { link = "FoldColumn" },
        CursorLineNr = { fg = colors.base.fg3 },
        CursorLineSign = { link = "SignColumn" },
        DiffAdd = { bg = colors.dim.green },
        DiffChange = { bg = colors.dim.magenta },
        DiffDelete = { bg = colors.dim.red },
        DiffText = { bg = colors.dim.blue },
        Directory = { fg = colors.normal.cyan },
        EndOfBuffer = { link = "NonText" },
        ErrorMsg = { bg = colors.dim.red },
        FloatBorder = { fg = colors.base.fg2, bg = colors.base.bg4 },
        FloatTitle = { fg = colors.normal.green, bg = colors.base.bg4 },
        FoldColumn = { link = "LineNr" },
        Folded = { fg = colors.base.fg2, bg = colors.dim.cyan },
        IncSearch = { bg = colors.dim.yellow },
        lCursor = { link = "Cursor" },
        LineNr = { fg = colors.base.fg4 },
        LineNrAbove = { link = "LineNr" },
        LineNrBelow = { link = "LineNr" },
        MatchParen = { bg = colors.base.bg4 },
        ModeMsg = { fg = colors.base.fg2 },
        MoreMsg = { fg = colors.bright.cyan },
        MsgArea = { fg = colors.base.fg2 },
        MsgSeparator = { link = "StatusLine" },
        NonText = { link = "Whitespace" },
        Normal = { fg = colors.base.fg1, bg = style.transparent and "NONE" or colors.base.bg1 },
        NormalFloat = { bg = colors.base.bg4 },
        NormalNC = { link = "Normal" },
        NvimInternalError = { link = "Error" },
        Pmenu = { bg = colors.base.bg3 },
        PmenuExtra = { fg = colors.base.fg3 },
        PmenuExtraSel = { link = "PmenuExtra" },
        PmenuKind = { fg = colors.normal.blue },
        PmenuKindSel = { link = "PmenuKind" },
        PmenuSbar = { fg = colors.base.fg5, bg = colors.base.bg3 },
        PmenuSel = { bg = colors.base.bg5 },
        PmenuThumb = { link = "PmenuSel" },
        Question = { link = "MoreMsg" },
        QuickFixLine = { bg = colors.base.bg3 },
        Search = { fg = colors.base.fg1, bg = colors.dim.yellow },
        SignColumn = { link = "LineNr" },
        SnippetTabstop = { fg = colors.base.fg1, bg = colors.base.bg3 },
        SpecialKey = { link = "Whitespace" },
        SpellBad = { fg = colors.normal.red },
        SpellCap = { fg = colors.normal.blue },
        SpellLocal = { fg = colors.normal.yellow },
        SpellRare = { fg = colors.bright.yellow },
        StatusLine = { link = "NormalFloat" },
        StatusLineNC = { fg = colors.base.fg2, bg = colors.base.bg4 },
        Substitute = { bg = colors.dim.red },
        TabLine = { link = "StatusLine" },
        TabLineFill = { link = "StatusLine" },
        TabLineSel = { bg = colors.base.bg4 },
        TermCursor = { link = "Cursor" },
        TermCursorNC = { fg = colors.base.bg1, bg = colors.base.fg2 },
        Title = { fg = colors.normal.green },
        Visual = { fg = colors.base.fg1, bg = colors.base.bg5 },
        VisualNOS = { link = "VisualNOS" },
        WarningMsg = { fg = colors.normal.red },
        Whitespace = { fg = colors.base.fg5 },
        WildMenu = { link = "NormalFloat" },
        WinBar = { link = "StatusLine" },
        WinBarNC = { link = "StatusLineNC" },
        WinSeparator = { fg = colors.base.fg3 },

        --- :help group-name ---
        Added = { fg = colors.bright.green },
        Boolean = { link = "Number" },
        Changed = { fg = colors.normal.cyan },
        Character = { link = "String" },
        Comment = { fg = colors.base.fg3, italic = style.italic_comments },
        Conditional = { link = "Keyword" },
        Constant = { fg = colors.base.fg1, bold = true },
        Debug = { link = "Special" },
        Define = { link = "PreProc" },
        Delimiter = { fg = colors.dim.yellow },
        Error = { bg = colors.dim.red },
        Exception = { link = "Keyword" },
        Float = { link = "Number" },
        Function = { fg = colors.bright.blue },
        Identifier = { fg = colors.base.fg1 },
        Ignore = { fg = colors.base.fg3 },
        Include = { link = "PreProc" },
        Keyword = { fg = colors.normal.magenta },
        Label = { link = "Keyword" },
        Macro = { link = "PreProc" },
        Number = { fg = colors.normal.cyan },
        Operator = { fg = colors.bright.red },
        PreCondit = { link = "PreProc" },
        PreProc = { fg = colors.bright.green },
        Removed = { fg = colors.bright.red },
        Repeat = { link = "Keyword" },
        Special = { fg = colors.normal.yellow },
        SpecialChar = { fg = colors.bright.blue },
        SpecialComment = { link = "Special" },
        Statement = { link = "Keyword" },
        StorageClass = { link = "Type" },
        String = { fg = colors.normal.green, italic = style.italic_strings },
        Structure = { link = "Type" },
        Tag = { link = "Special" },
        Todo = { fg = colors.normal.red, bold = true },
        Type = { fg = colors.normal.yellow },
        Typedef = { link = "Type" },
        Underlined = { underline = true },

        --- :help diagnostic-highlights ---
        DiagnosticError = { fg = colors.normal.red },
        DiagnosticWarn = { fg = colors.bright.yellow },
        DiagnosticInfo = { fg = colors.bright.blue },
        DiagnosticHint = { fg = colors.bright.green },
        DiagnosticUnnecessary = { fg = colors.base.fg4 },

        --- :help lsp-highlight ---
        LspReferenceText = { link = "IncSearch" },
        LspReferenceRead = { link = "NormalFloat" },
        LspReferenceWrite = { link = "NormalFloat" },
        LspInlayHint = { fg = colors.base.fg3, bg = colors.base.bg3 },

        --- :help treesitter-highlight-groups ---
        ["@variable"] = { link = "Identifier" },
        ["@variable.builtin"] = { link = "Identifier" },
        ["@variable.parameter"] = { link = "Identifier" },
        ["@variable.parameter.builtin"] = { link = "Identifier" },
        ["@variable.member"] = {},
        ["@constant"] = { link = "Constant" },
        ["@constant.builtin"] = { link = "Constant" },
        ["@constant.macro"] = { link = "Constant" },
        -- ['@module'] = {},
        -- ['@module.builtin'] = {},
        ["@label"] = { link = "Label" },
        ["@string"] = { link = "String" },
        -- ['@string.documentation'] = {},
        -- ['@string.regexp'] = {},
        -- ['@string.escape'] = {},
        -- ['@string.special'] = {},
        -- ['@string.special.symbol'] = {},
        -- ['@string.special.path'] = {},
        -- ['@string.special.url'] = {},
        ["@character"] = { link = "Character" },
        ["@character.special"] = { link = "SpecialChar" },
        ["@character.printf"] = { link = "SpecialChar" },
        ["@boolean"] = { link = "Boolean" },
        ["@number"] = { link = "Number" },
        ["@number.float"] = { link = "Number" },
        ["@type"] = { link = "Type" },
        ["@type.builtin"] = { link = "Type" },
        ["@type.definition"] = { link = "Type" },
        -- ['@attribute'] = {},
        -- ['@attribute.builtin'] = {},
        -- ['@property'] = {},
        ["@function"] = { link = "Function" },
        ["@function.builtin"] = { link = "Keyword" },
        -- ['@function.call'] = {},
        -- ['@function.macro'] = {},
        -- ['@function.method'] = {},
        -- ['@function.method.call'] = {},
        ["@constructor"] = { fg = colors.bright.cyan },
        ["@constructor.lua"] = { fg = colors.normal.yellow },
        ["@operator"] = { link = "Operator" },
        ["@keyword"] = { link = "Keyword" },
        -- ['@keyword.coroutine'] = {},
        -- ['@keyword.function'] = {},
        -- ['@keyword.operator'] = {},
        -- ['@keyword.import'] = {},
        -- ['@keyword.type'] = {},
        -- ['@keyword.modifier'] = {},
        -- ['@keyword.repeat'] = {},
        -- ['@keyword.return'] = {},
        -- ['@keyword.debug'] = {},
        -- ['@keyword.exception'] = {},
        -- ['@keyword.conditional'] = {},
        -- ['@keyword.conditional.ternary'] = {},
        -- ['@keyword.directive'] = {},
        -- ['@keyword.directive.define'] = {},
        ["@punctuation.delimiter"] = { link = "Delimiter" },
        ["@punctuation.bracket"] = { link = "Delimiter" },
        -- ['@punctuation.special'] = {},
        ["@comment"] = { link = "Comment" },
        -- ['@comment.documentation'] = {},
        -- ['@comment.error'] = {},
        -- ['@comment.warning'] = {},
        ["@comment.todo"] = { link = "Todo" },
        -- ['@comment.note'] = {},
        ["@markup.strong"] = { bold = true },
        ["@markup.italic"] = { italic = true },
        ["@markup.strikethrough"] = { strikethrough = true },
        ["@markup.underline"] = { link = "Underlined" },
        -- ['@markup.heading'] = {},
        -- ['@markup.heading.1'] = {},
        -- ['@markup.heading.2'] = {},
        -- ['@markup.heading.3'] = {},
        -- ['@markup.heading.4'] = {},
        -- ['@markup.heading.5'] = {},
        -- ['@markup.heading.6'] = {},
        -- ['@markup.quote'] = {},
        -- ['@markup.math'] = {},
        -- ['@markup.link'] = {},
        -- ['@markup.link.label'] = {},
        -- ['@markup.link.url'] = {},
        -- ['@markup.raw'] = {},
        -- ['@markup.raw.block'] = {},
        -- ['@markup.list'] = {},
        -- ['@markup.list.checked'] = {},
        -- ['@markup.list.unchecked'] = {},
        ["@diff.plus"] = { link = "Added" },
        ["@diff.minus"] = { link = "Removed" },
        ["@diff.delta"] = { link = "Changed" },
        -- ['@tag'] = {},
        -- ['@tag.builtin'] = {},
        -- ['@tag.attribute'] = {},
        -- ['@tag.delimiter'] = {},

        -- Quickfix list
        qfFileName = { fg = colors.base.fg3 },
        qfError = { fg = colors.bright.red },
        qfSeparator = { fg = colors.base.fg1 },
        qfLineNr = { fg = colors.base.fg3 },

        --- :help lspconfig-highlight ---
        -- LspInfoTitle
        -- LspInfoList
        -- LspInfoFiletype
        LspInfoBorder = { link = "FloatBorder" },
        LspInfoTip = { link = "Comment" },

        --- :help gitsigns-highlight-groups ---
        GitSignsAdd = { fg = colors.normal.green },
        GitSignsChange = { fg = colors.normal.magenta },
        GitSignsDelete = { fg = colors.normal.red },
        GitSignsCurrentLineBlame = { fg = colors.normal.blue },

        --- :help ibl.highlights ---
        IblIndent = { fg = colors.base.fg5 },
        IblScope = { fg = colors.base.fg4 },

        --- :help cmp-highlight ---
        CmpItemKind = { fg = colors.normal.blue },
        CmpItemMenu = { fg = colors.base.fg3 },

        -- telescope.nvim
        TelescopeNormal = { link = "NormalFloat" },
        TelescopeBorder = { link = "FloatBorder" },
        TelescopePromptCounter = { fg = colors.base.fg3 },
    }
end

---@type table|nil
local current_scheme = nil

---Get the current scheme
---@return table
M.get = function()
    if current_scheme == nil then
        M.set()
    end
    ---@type table
    return current_scheme
end

---Set the current scheme to the default merged with the return value of `overrides`
---@param overrides function|nil
M.set = function(overrides)
    local palette_tbl, config_tbl = palette.get(), config.get()
    current_scheme = {}
    current_scheme.light = fill_default(palette_tbl.light, config_tbl.style)
    current_scheme.dark = fill_default(palette_tbl.dark, config_tbl.style)
    if overrides ~= nil then
        local custom_scheme = {}
        custom_scheme.light = overrides(palette_tbl.light, config_tbl.style)
        custom_scheme.dark = overrides(palette_tbl.dark, config_tbl.style)
        current_scheme = vim.tbl_deep_extend("force", current_scheme, custom_scheme)
    end
end

return M
