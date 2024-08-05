local util = require("dracula.util")

local M = {}

---@type DraculaHighlightsFn
function M.get(c)
  return {
    ["@lsp.type.annotation"] = { link = "@annotation" },
    ["@lsp.type.boolean"] = "@boolean",
    ["@lsp.type.builtinType"] = "@type.builtin",
    ["@lsp.type.class"] = "@type",
    ["@lsp.type.comment"] = "@comment",
    ["@lsp.type.decorator"] = "@attribute",
    ["@lsp.type.deriveHelper"] = "@attribute",
    ["@lsp.type.enum"] = "@type",
    ["@lsp.type.enumMember"] = "@constant",
    ["@lsp.type.escapeSequence"] = "@string.escape",
    ["@lsp.type.formatSpecifier"] = "@markup.list",
    ["@lsp.type.generic"] = "@variable",
    ["@lsp.type.interface"] = { fg = c.bright_cyan },
    ["@lsp.type.keyword"] = "@keyword",
    ["@lsp.type.lifetime"] = "@keyword.storage",
    ["@lsp.type.macro"] = {},
    ["@lsp.type.namespace"] = "@module",
    ["@lsp.type.namespace.python"] = "@variable",
    ["@lsp.type.number"] = "@number",
    ["@lsp.type.operator"] = "@operator",
    ["@lsp.type.parameter"] = "@variable.parameter",
    ["@lsp.type.property"] = "@property",
    ["@lsp.type.selfKeyword"] = "@variable.builtin",
    ["@lsp.type.selfTypeKeyword"] = "@variable.builtin",
    ["@lsp.type.string"] = "@string",
    ["@lsp.type.typeAlias"] = "@type.definition",
    ["@lsp.type.typeParameter"] = "@type",
    ["@lsp.type.unresolvedReference"] = { undercurl = true, sp = c.error },
    ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
    ["@lsp.typemod.class.defaultLibrary"] = "@type.builtin",
    ["@lsp.typemod.enum.defaultLibrary"] = "@type.builtin",
    ["@lsp.typemod.enumMember.defaultLibrary"] = "@constant.builtin",
    ["@lsp.typemod.function.defaultLibrary"] = "@function.builtin",
    ["@lsp.typemod.keyword.async"] = "@keyword.coroutine",
    ["@lsp.typemod.keyword.injected"] = "@keyword",
    ["@lsp.typemod.macro.defaultLibrary"] = "@function.builtin",
    ["@lsp.typemod.method.defaultLibrary"] = "@function.builtin",
    ["@lsp.typemod.namespace.importDeclaration"] = { fg = c.fg },
    ["@lsp.typemod.operator.injected"] = "@operator",
    ["@lsp.typemod.string.injected"] = "@string",
    ["@lsp.typemod.struct.defaultLibrary"] = "@type.builtin",
    ["@lsp.typemod.type.defaultLibrary"] = { fg = util.blend_bg(c.teal, 0.8, c.bg) },
    ["@lsp.typemod.typeAlias.defaultLibrary"] = { fg = util.blend_bg(c.teal, 0.8, c.bg) },
    ["@lsp.typemod.variable.callable"] = "@function",
    ["@lsp.typemod.variable.defaultLibrary"] = "@variable.builtin",
    ["@lsp.typemod.variable.injected"] = "@variable",
    ["@lsp.typemod.variable.readonly"] = "@constant",
    ["@lsp.typemod.variable.static"] = "@constant",
  }
end

return M
