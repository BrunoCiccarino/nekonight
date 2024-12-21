local ret = vim.deepcopy(require("nekonight.colors.storm"))

---@type Palette
return vim.tbl_deep_extend("force", ret, {
  bg = "#3c3836",
  bg_dark = "#3c3836",
  bg_dark1 = "#3c3836",
  bg_highlight = "#32302f",
  blue = "#82aaff",
  blue0 = "#3e68d7",
  blue1 = "#65bcff",
  blue2 = "#0db9d7",
  blue5 = "#8ec07c",
  blue6 = "#b4f9f8",
  blue7 = "#394b70",
  comment = "#636da6",
  cyan = "#86e1fc",
  dark3 = "#545c7e",
  dark5 = "#737aa2",
  fg = "#c8d3f5",
  fg_dark = "#828bb8",
  fg_gutter = "#3b4261",
  green = "#c3e88d",
  green1 = "#4fd6be",
  green2 = "#41a6b5",
  magenta = "#c099ff",
  magenta2 = "#ff007c",
  orange = "#ff966c",
  purple = "#cc241d",
  red = "#ff757f",
  red1 = "#c53b53",
  teal = "#4fd6be",
  terminal_black = "#3c3836",
  yellow = "#ffc777",
  git = {
    add = "#b8db87",
    change = "#7ca1f2",
    delete = "#e26a75",
  },

})

