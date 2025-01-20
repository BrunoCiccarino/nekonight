---@class nekonight.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias nekonight.Highlights table<string,nekonight.Highlight|string>

---@alias nekonight.HighlightsFn fun(colors: ColorScheme, opts:nekonight.Config):nekonight.Highlights

---@class nekonight.Cache
---@field groups nekonight.Highlights
---@field inputs table
