vim.g.colors_name = "flbx"

local colors = {
  bg = "#212631",
  fg = "#ddeafb",
  cursor = "#99b8d8",
  cursor_text = "#212631",
  selection_bg = "#b4deeb",
  selection_fg = "#212631",

  p0 = "#444c5c", -- dark blue-grey pastel
  p1 = "#f3b6bb", -- very soft red
  p2 = "#80a988", -- soft muted green
  p3 = "#9ac0ce", -- pale muted aqua-blue
  p4 = "#7da4ab", -- pastel arctic blue
  p5 = "#99b8d8", -- steel powder blue
  p6 = "#7bbad5", -- soft nord teal
  p7 = "#b4bed3", -- muted periwinkle grey
  p8 = "#39404d", -- ink blue-grey
  p9 = "#f6c4cc", -- softer muted soft-pink-red
  p10 = "#9fc7ad", -- faded mint pastel
  p11 = "#b4deeb", -- icy blue-mint
  p12 = "#8eaada", -- light cornflower
  p13 = "#94d1d9", -- blue-cyan pastel
  p14 = "#7fade2", -- muted arctic aqua
  p15 = "#e5eef6", -- pale nord white-blue
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

-- Editor UI
hi("Normal", { fg = colors.fg, bg = colors.bg })
hi("Cursor", { fg = colors.cursor_text, bg = colors.cursor })
hi("CursorLine", {})
hi("CursorLineNr", { fg = colors.p12, bold = true })
hi("LineNr", { fg = colors.p0, bg = colors.bg })
hi("SignColumn", { bg = colors.bg })
hi("Visual", { bg = colors.selection_bg, fg = colors.selection_fg })
hi("VertSplit", { fg = colors.p0, bg = colors.bg })
hi("StatusLine", { fg = colors.p7, bg = colors.p8 })
hi("StatusLineNC", { fg = colors.p0, bg = colors.p8 })
hi("TabLine", { fg = colors.p7, bg = colors.p8 })
hi("TabLineFill", { bg = colors.p8 })
hi("TabLineSel", { fg = colors.p15, bg = colors.p12 })
hi("WinBar", { fg = colors.fg, bg = colors.bg })
hi("WinBarNC", { fg = colors.fg, bg = colors.bg })
hi("Pmenu", { fg = colors.fg, bg = colors.p8 })
hi("PmenuSel", { fg = colors.p15, bg = colors.p12 })
hi("PmenuSbar", { bg = colors.p8 })
hi("PmenuThumb", { bg = colors.p0 })
hi("WildMenu", { fg = colors.p15, bg = colors.p12 })
hi("Folded", { fg = colors.p7, bg = colors.p8 })
hi("NonText", { fg = colors.p0 })
hi("SpecialKey", { fg = colors.p4 })
hi("Search", { bg = colors.p5, fg = colors.bg })
hi("IncSearch", { bg = colors.p10, fg = colors.bg })
hi("MoreMsg", { fg = colors.p2 })
hi("Question", { fg = colors.p4 })
hi("Title", { fg = colors.p4, bold = true })
hi("Directory", { fg = colors.p4 })

-- Syntax Highlighting
hi("Comment", { fg = colors.p0, italic = true })
hi("Constant", { fg = colors.p12 })
hi("String", { fg = colors.p10 })
hi("Character", { fg = colors.p10 })
hi("Number", { fg = colors.p12 })
hi("Boolean", { fg = colors.p12 })
hi("Float", { fg = colors.p12 })
hi("Identifier", { fg = colors.p5 })
hi("Function", { fg = colors.p13, bold = true })
hi("Statement", { fg = colors.p6 })
hi("Conditional", { fg = colors.p6 })
hi("Repeat", { fg = colors.p6 })
hi("Label", { fg = colors.p6 })
hi("Operator", { fg = colors.p14 })
hi("Keyword", { fg = colors.p6, bold = true })
hi("Exception", { fg = colors.p1 })
hi("PreProc", { fg = colors.p3 })
hi("Include", { fg = colors.p3 })
hi("Define", { fg = colors.p3 })
hi("Macro", { fg = colors.p3 })
hi("PreCondit", { fg = colors.p3 })
hi("Type", { fg = colors.p4 })
hi("StorageClass", { fg = colors.p4 })
hi("Structure", { fg = colors.p4 })
hi("Typedef", { fg = colors.p4 })
hi("Special", { fg = colors.p14 })
hi("SpecialChar", { fg = colors.p14 })
hi("Tag", { fg = colors.p12 })
hi("Delimiter", { fg = colors.fg })
hi("SpecialComment", { fg = colors.p0, bold = true })
hi("Debug", { fg = colors.p1 })
hi("Todo", { fg = colors.bg, bg = colors.p10, bold = true })
hi("Error", { fg = colors.p1, bg = colors.p8, bold = true })
hi("Underlined", { underline = true })

-- LSP Diagnostics
hi("DiagnosticError", { fg = colors.p1 })
hi("DiagnosticWarn", { fg = colors.p3 })
hi("DiagnosticInfo", { fg = colors.p6 })
hi("DiagnosticHint", { fg = colors.p2 })
hi("DiagnosticUnderlineError", { undercurl = true, sp = colors.p1 })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.p3 })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.p6 })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = colors.p2 })

-- Git
hi("DiffAdd", { bg = colors.p8, fg = colors.p2 })
hi("DiffChange", { bg = colors.p8, fg = colors.p3 })
hi("DiffDelete", { bg = colors.p8, fg = colors.p1 })
hi("DiffText", { bg = colors.p8, fg = colors.p15 })
hi("GitSignsAdd", { fg = colors.p2 })
hi("GitSignsChange", { fg = colors.p3 })
hi("GitSignsDelete", { fg = colors.p1 })

-- Telescope
hi("TelescopeBorder", { fg = colors.p0 })
hi("TelescopePromptBorder", { fg = colors.p0 })
hi("TelescopeResultsBorder", { fg = colors.p0 })
hi("TelescopePreviewBorder", { fg = colors.p0 })
hi("TelescopeSelection", { bg = colors.p8 })

-- Neotree
hi("NeoTreeNormal", { fg = colors.fg, bg = colors.bg })
hi("NeoTreeNormalNC", { fg = colors.fg, bg = colors.bg })
hi("NeoTreeRootName", { fg = colors.p4, bold = true })
hi("NeoTreeGitStatusAdded", { fg = colors.p2 })
hi("NeoTreeGitStatusConflict", { fg = colors.p1 })
hi("NeoTreeGitStatusModified", { fg = colors.p3 })
hi("NeoTreeGitStatusRenamed", { fg = colors.p4 })
hi("NeoTreeIndentMarker", { fg = colors.p0 })
hi("NeoTreeVertSplit", { fg = colors.p0, bg = colors.bg })
