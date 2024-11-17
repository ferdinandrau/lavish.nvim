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
        ------------------------------
        --- :help highlight-groups ---
        ------------------------------

        ColorColumn = { bg = colors.base.bg2 },
        Conceal = { fg = colors.base.fg2 },
        CurSearch = { fg = colors.base.fg1, bg = colors.normal.blue },
        Cursor = { fg = colors.base.bg1, bg = colors.base.fg1 },
        CursorColumn = { link = "ColorColumn" },
        CursorIM = { link = "Cursor" },
        CursorLine = { link = "ColorColumn" },
        CursorLineFold = { link = "FoldColumn" },
        CursorLineNr = { fg = colors.base.fg2 },
        CursorLineSign = { link = "SignColumn" },
        DiffAdd = { bg = colors.faint.green },
        DiffChange = { bg = colors.faint.magenta },
        DiffDelete = { bg = colors.faint.red },
        DiffText = { bg = colors.faint.blue },
        Directory = { fg = colors.normal.blue },
        EndOfBuffer = { link = "NonText" },
        ErrorMsg = { fg = colors.normal.red },
        FloatBorder = { fg = colors.base.fg2, bg = colors.base.bg4 },
        FloatTitle = { fg = colors.normal.green, bg = colors.base.bg4 },
        FoldColumn = { link = "LineNr" },
        Folded = { fg = colors.base.fg2, bg = colors.faint.cyan },
        IncSearch = { link = "Search" },
        lCursor = { link = "Cursor" },
        LineNr = { fg = colors.base.fg4 },
        LineNrAbove = { link = "LineNr" },
        LineNrBelow = { link = "LineNr" },
        MatchParen = { bg = colors.base.bg4 },
        ModeMsg = { fg = colors.base.fg2 },
        MoreMsg = { fg = colors.bold.cyan },
        MsgArea = { fg = colors.base.fg2 },
        MsgSeparator = { link = "StatusLine" },
        NonText = { fg = colors.base.fg5 },
        Normal = { fg = colors.base.fg1, bg = style.transparent and "NONE" or colors.base.bg1 },
        NormalFloat = { bg = colors.base.bg4 },
        NormalNC = { link = "Normal" },
        Pmenu = { bg = colors.base.bg3 },
        PmenuExtra = { fg = colors.base.fg3 },
        PmenuExtraSel = { link = "PmenuExtra" },
        PmenuKind = { fg = colors.normal.blue },
        PmenuKindSel = { link = "PmenuKind" },
        PmenuSbar = { fg = colors.base.fg5, bg = colors.base.bg3 },
        PmenuSel = { bg = colors.base.bg5 },
        PmenuThumb = { link = "PmenuSel" },
        Question = { link = "MoreMsg" },
        QuickFixLine = { bg = colors.faint.blue },
        Search = { fg = colors.base.fg1, bg = colors.faint.blue },
        SignColumn = { link = "LineNr" },
        SnippetTabstop = { fg = colors.base.fg1, bg = colors.base.bg3 },
        SpecialKey = { link = "Whitespace" },
        SpellBad = { fg = colors.normal.red },
        SpellCap = { fg = colors.normal.blue },
        SpellLocal = { fg = colors.normal.yellow },
        SpellRare = { fg = colors.bold.yellow },
        StatusLine = { fg = colors.base.fg1, bg = colors.base.bg4 },
        StatusLineNC = { fg = colors.base.fg3, bg = colors.base.bg4 },
        Substitute = { fg = colors.base.fg1, bg = colors.faint.red },
        TabLine = { fg = colors.base.fg2, bg = colors.base.bg4 },
        TabLineFill = { link = "TabLine" },
        TabLineSel = { bg = colors.base.bg1, bold = true },
        TermCursor = { link = "Cursor" },
        TermCursorNC = { fg = colors.base.bg1, bg = colors.base.fg2 },
        Title = { fg = colors.normal.green },
        Visual = { fg = colors.base.fg1, bg = colors.base.bg5 },
        VisualNOS = { link = "Visual" },
        WarningMsg = { fg = colors.normal.yellow },
        Whitespace = { link = "NonText" },
        WildMenu = { link = "NormalFloat" },
        WinBar = { link = "StatusLine" },
        WinBarNC = { link = "StatusLineNC" },
        WinSeparator = { fg = colors.base.fg3 },

        ------------------------
        --- :help group-name ---
        ------------------------

        Added = { fg = colors.bold.green },
        Boolean = { link = "Number" },
        Changed = { fg = colors.normal.cyan },
        Character = { link = "String" },
        Comment = { fg = colors.base.fg3, italic = style.italic_comments },
        Conditional = { link = "Keyword" },
        Constant = { fg = colors.base.fg1, bold = true },
        Debug = { link = "Special" },
        Define = { link = "PreProc" },
        Delimiter = { fg = colors.base.fg2 },
        Error = { bg = colors.faint.red },
        Exception = { link = "Keyword" },
        Float = { link = "Number" },
        Function = { fg = colors.bold.blue },
        Identifier = { fg = colors.base.fg1 },
        Ignore = { fg = colors.base.fg3 },
        Include = { link = "PreProc" },
        Keyword = { fg = colors.normal.magenta },
        Label = { link = "Keyword" },
        Macro = { link = "PreProc" },
        Number = { fg = colors.normal.cyan },
        Operator = { fg = colors.bold.red },
        PreCondit = { link = "PreProc" },
        PreProc = { fg = colors.bold.green },
        Removed = { fg = colors.bold.red },
        Repeat = { link = "Keyword" },
        Special = { fg = colors.normal.yellow },
        SpecialChar = { fg = colors.bold.blue },
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

        -----------------------------------
        --- :help diagnostic-highlights ---
        -----------------------------------

        DiagnosticError = { fg = colors.normal.red },
        DiagnosticWarn = { fg = colors.normal.yellow },
        DiagnosticInfo = { fg = colors.normal.blue },
        DiagnosticHint = { fg = colors.normal.magenta },
        DiagnosticOk = { fg = colors.normal.green },
        DiagnosticUnnecessary = { fg = colors.base.fg4 },
        DiagnosticDeprecated = { sp = colors.normal.yellow, strikethrough = true },
        DiagnosticVirtualTextError = { fg = colors.normal.red, bg = colors.faint.red },
        DiagnosticVirtualTextWarn = { fg = colors.normal.yellow, bg = colors.faint.yellow },
        DiagnosticVirtualTextInfo = { fg = colors.normal.blue, bg = colors.faint.blue },
        DiagnosticVirtualTextHint = { fg = colors.normal.magenta, bg = colors.faint.magenta },
        DiagnosticVirtualTextOK = { fg = colors.normal.green, bg = colors.faint.green },
        DiagnosticUnderlineError = { sp = colors.normal.red, undercurl = true },
        DiagnosticUnderlineWarn = { sp = colors.normal.yellow, undercurl = true },
        DiagnosticUnderlineInfo = { sp = colors.normal.blue, undercurl = true },
        DiagnosticUnderlineHint = { sp = colors.normal.magenta, undercurl = true },
        DiagnosticUnderlineOk = { sp = colors.normal.green, undercurl = true },

        ---------------------------
        --- :help lsp-highlight ---
        ---------------------------

        LspReferenceText = { bg = colors.base.bg3 },
        LspReferenceRead = { link = "LspReferenceText" },
        LspReferenceWrite = { link = "LspReferenceText" },
        LspInlayHint = { fg = colors.base.fg3, bg = colors.base.bg3 },

        -----------------------------------------
        --- :help treesitter-highlight-groups ---
        -----------------------------------------

        -- ['@attribute'] = {},
        -- ['@attribute.builtin'] = {},
        -- ['@comment.documentation'] = {},
        -- ['@comment.error'] = {},
        -- ['@comment.note'] = {},
        -- ['@comment.warning'] = {},
        -- ['@function.call'] = {},
        -- ['@function.macro'] = {},
        -- ['@function.method'] = {},
        -- ['@function.method.call'] = {},
        -- ['@keyword.conditional'] = {},
        -- ['@keyword.conditional.ternary'] = {},
        -- ['@keyword.coroutine'] = {},
        -- ['@keyword.debug'] = {},
        -- ['@keyword.directive'] = {},
        -- ['@keyword.directive.define'] = {},
        -- ['@keyword.exception'] = {},
        -- ['@keyword.function'] = {},
        -- ['@keyword.import'] = {},
        -- ['@keyword.modifier'] = {},
        -- ['@keyword.operator'] = {},
        -- ['@keyword.repeat'] = {},
        -- ['@keyword.return'] = {},
        -- ['@keyword.type'] = {},
        -- ['@markup.heading'] = {},
        -- ['@markup.heading.1'] = {},
        -- ['@markup.heading.2'] = {},
        -- ['@markup.heading.3'] = {},
        -- ['@markup.heading.4'] = {},
        -- ['@markup.heading.5'] = {},
        -- ['@markup.heading.6'] = {},
        -- ['@markup.link.label'] = {},
        -- ['@markup.link.url'] = {},
        -- ['@markup.list'] = {},
        -- ['@markup.list.checked'] = {},
        -- ['@markup.list.unchecked'] = {},
        -- ['@markup.math'] = {},
        -- ['@markup.quote'] = {},
        -- ['@markup.raw'] = {},
        -- ['@markup.raw.block'] = {},
        -- ['@module'] = {},
        -- ['@module.builtin'] = {},
        -- ['@property'] = {},
        -- ['@punctuation.special'] = {},
        -- ['@string.documentation'] = {},
        -- ['@string.escape'] = {},
        -- ['@string.regexp'] = {},
        -- ['@string.special'] = {},
        -- ['@string.special.path'] = {},
        -- ['@string.special.symbol'] = {},
        -- ['@string.special.url'] = {},
        ["@boolean"] = { link = "Boolean" },
        ["@character"] = { link = "Character" },
        ["@character.printf"] = { link = "SpecialChar" },
        ["@character.special"] = { link = "SpecialChar" },
        ["@comment"] = { link = "Comment" },
        ["@comment.todo"] = { link = "Todo" },
        ["@constant"] = { link = "Constant" },
        ["@constant.builtin"] = { link = "Constant" },
        ["@constant.macro"] = { link = "Constant" },
        ["@constructor"] = { fg = colors.bold.cyan },
        ["@constructor.lua"] = { fg = colors.normal.yellow },
        ["@diff.delta"] = { link = "Changed" },
        ["@diff.minus"] = { link = "Removed" },
        ["@diff.plus"] = { link = "Added" },
        ["@function"] = { link = "Function" },
        ["@function.builtin"] = { link = "Keyword" },
        ["@keyword"] = { link = "Keyword" },
        ["@label"] = { link = "Label" },
        ["@markup.italic"] = { italic = true },
        ["@markup.link"] = { fg = colors.bold.blue, underline = true },
        ["@markup.strikethrough"] = { strikethrough = true },
        ["@markup.strong"] = { bold = true },
        ["@markup.underline"] = { link = "Underlined" },
        ["@number"] = { link = "Number" },
        ["@number.float"] = { link = "Number" },
        ["@operator"] = { link = "Operator" },
        ["@punctuation.bracket"] = { link = "Delimiter" },
        ["@punctuation.delimiter"] = { link = "Delimiter" },
        ["@string"] = { link = "String" },
        ["@tag"] = { link = "Tag" },
        ["@tag.attribute"] = { link = "Identifier" },
        ["@tag.builtin"] = { link = "Special" },
        ["@tag.delimiter"] = { link = "Delimiter" },
        ["@type"] = { link = "Type" },
        ["@type.builtin"] = { link = "Type" },
        ["@type.definition"] = { link = "Type" },
        ["@variable"] = { link = "Identifier" },
        ["@variable.builtin"] = { link = "Identifier" },
        ["@variable.member"] = {},
        ["@variable.parameter"] = { link = "Identifier" },
        ["@variable.parameter.builtin"] = { link = "Identifier" },

        -----------------------------------
        --- Undocumented: quickfix list ---
        -----------------------------------

        qfError = { fg = colors.normal.red },
        qfFileName = { fg = colors.normal.blue },
        qfLineNr = { fg = colors.base.fg2 },
        qfSeparator = { fg = colors.base.fg1 },

        ---------------
        --- Plugins ---
        ---------------

        GitSignsAdd = { fg = colors.normal.green },
        GitSignsChange = { fg = colors.normal.magenta },
        GitSignsCurrentLineBlame = { fg = colors.normal.blue },
        GitSignsDelete = { fg = colors.normal.red },

        IblIndent = { fg = colors.base.fg5 },
        IblScope = { fg = colors.base.fg4 },

        TelescopeBorder = { link = "FloatBorder" },
        TelescopeMultiIcon = { fg = colors.bold.magenta },
        TelescopeMultiSelection = { link = "TelescopeNormal" },
        TelescopeNormal = { link = "NormalFloat" },
        TelescopePromptCounter = { fg = colors.base.fg3 },
        TelescopePromptPrefix = { fg = colors.bold.green },
        TelescopeSelection = { bg = colors.base.bg5 },
        TelescopeSelectionCaret = { fg = colors.normal.cyan, bg = colors.base.bg5 },
        TelescopeTitle = { fg = colors.base.fg1, bold = true },

        MiniIconsAzure = { fg = colors.bold.blue },
        MiniIconsBlue = { fg = colors.normal.blue },
        MiniIconsCyan = { fg = colors.normal.cyan },
        MiniIconsGreen = { fg = colors.normal.green },
        MiniIconsGrey = { fg = colors.base.fg1 },
        MiniIconsOrange = { fg = colors.normal.yellow },
        MiniIconsPurple = { fg = colors.normal.magenta },
        MiniIconsRed = { fg = colors.normal.red },
        MiniIconsYellow = { fg = colors.bold.yellow },

        MasonHeader = { bold = true },
        MasonHighlight = { fg = colors.normal.blue },
        MasonHighlightBlockBold = { fg = colors.base.fg1, bg = colors.bold.blue },
        MasonLink = { fg = colors.bold.blue },
        MasonMuted = { fg = colors.base.fg2 },
        MasonMutedBlock = { link = "ColorColumn" },

        CmpItemKind = { fg = colors.normal.blue },
        CmpItemMenu = { fg = colors.base.fg3 },

        BlinkCmpDocBorder = { fg = colors.base.fg3, bg = colors.base.bg3 },
        BlinkCmpDocCursorLine = { bg = "NONE" },
        BlinkCmpLabel = { fg = colors.base.fg1, bg = "NONE" },
        BlinkCmpLabelDeprecated = { link = "DiagnosticDeprecated" },
        BlinkCmpLabelMatch = { fg = colors.normal.cyan },
        BlinkCmpMenuBorder = { fg = colors.base.fg3, bg = colors.base.bg3 },
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
        for group, hl in pairs(overrides(palette_tbl.light, config_tbl.style)) do
            current_scheme.light[group] = hl
        end
        for group, hl in pairs(overrides(palette_tbl.dark, config_tbl.style)) do
            current_scheme.dark[group] = hl
        end
    end
end

return M
