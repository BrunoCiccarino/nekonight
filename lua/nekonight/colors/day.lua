---@param opts nekonight.Config
return function(opts)
  local style = opts.light_style or "night"
  style = style == "day" and "night" or style

  local Util = require("nekonight.util")

  ---@type Palette
  local colors = vim.deepcopy(Util.mod("nekonight.colors." .. style))

  ---@type Palette

  Util.invert(colors)
  colors.bg_dark = Util.blend(colors.bg, 0.9, colors.fg)
  colors.bg_dark1 = Util.blend(colors.bg_dark, 0.9, colors.fg)
  return colors
end
