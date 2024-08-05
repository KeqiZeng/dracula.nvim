local M = {}

M.url = "https://github.com/ibhagwan/fzf-lua"

---@type DraculaHighlightsFn
function M.get(c)
  return {
    FzfLuaBorder = { fg = c.border, bg = c.float.bg },
    FzfLuaCursor = "IncSearch",
    FzfLuaDirPart = { fg = c.dark.fg },
    FzfLuaFilePart = "FzfLuaFzfNormal",
    FzfLuaFzfCursorLine = "Visual",
    FzfLuaFzfNormal = { fg = c.fg },
    FzfLuaFzfPointer = { fg = c.pink },
    FzfLuaFzfSeparator = { fg = c.orange, bg = c.float.bg },
    FzfLuaHeaderBind = "@punctuation.special",
    FzfLuaHeaderText = "Title",
    FzfLuaNormal = { fg = c.fg, bg = c.float.bg },
    FzfLuaPath = "Directory",
    FzfLuaPreviewTitle = { fg = c.border, bg = c.float.bg },
    FzfLuaTitle = { fg = c.orange, bg = c.float.bg },
  }
end

return M
