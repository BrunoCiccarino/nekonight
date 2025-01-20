local config = require("nekonight.config")

local M = {}
---@type {light?: string, dark?: string}
M.styles = {}

---@param opts? nekonight.Config
function M.load(opts)
  opts = require("nekonight.config").extend(opts)
  local bg = vim.o.background
  local style_bg = opts.style == "day" and "light" or "dark"

  if bg ~= style_bg then
    if vim.g.colors_name == "nekonight-" .. opts.style then
      opts.style = bg == "light" and (M.styles.light or "day") or (M.styles.dark or "moon")
    else
      vim.o.background = style_bg
    end
  end
  M.styles[vim.o.background] = opts.style
  return require("nekonight.theme").setup(opts)
end

M.setup = config.setup

return M
