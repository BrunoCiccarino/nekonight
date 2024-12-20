local Util = require("nekonight.util")

local M = {}

M.url = "https://github.com/SuperBo/fugit2.nvim"

---@type nekonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    FugitBranch               = { fg = c.magenta },
    FugitRemote               = { fg = c.purple },
    FugitHunkHeader           = { bg = c.bg_highlight, fg = c.fg },
    FugitHunkHeaderHighlight  = { bg = c.fg_gutter, fg = c.blue },
    FugitDiffContextHighlight = { bg = Util.blend_bg(c.fg_gutter, 0.5), fg = c.fg_dark },
    FugitDiffDeleteHighlight  = { fg = c.git.delete, bg = c.diff.delete },
    FugitDiffAddHighlight     = { fg = c.git.add, bg = c.diff.add },
  }
end

return M
