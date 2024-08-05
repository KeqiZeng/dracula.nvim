local M = {}

M.url = "https://github.com/echasnovski/mini.files"

---@type DraculaHighlightsFn
function M.get(c)
  return {
    MiniFilesBorder = "FloatBorder",
    MiniFilesBorderModified = "DiagnosticFloatingWarn",
    MiniFilesCursorLine = "CursorLine",
    MiniFilesDirectory = "Directory",
    MiniFilesFile = { fg = c.float.fg },
    MiniFilesNormal = "NormalFloat",
    MiniFilesTitle = "FloatTitle",
    MiniFilesTitleFocused = { fg = c.border, bg = c.float.bg, bold = true },
  }
end

return M
