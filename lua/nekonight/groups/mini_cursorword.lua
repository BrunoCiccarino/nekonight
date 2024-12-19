local M = {}

M.url = "https://github.com/echasnovski/mini.cursorword"

---@type nekonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniCursorword        = { bg = c.fg_gutter },
    MiniCursorwordCurrent = { bg = c.fg_gutter },
  }
end

return M
