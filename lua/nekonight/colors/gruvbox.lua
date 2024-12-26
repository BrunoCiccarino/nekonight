local ret = vim.deepcopy(require("nekonight.colors.storm"))
local green3 = blue5 
local pastelWhite = dark3 
local yesun = green1
local vibred = purple

---@type Palette
return vim.tbl_deep_extend("force", ret, {
  bg = "#3c3836",
  bg_dark = "#3c3836",
  bg_dark1 = "#3c3836",
  bg_highlight = "#32302f",
  blue = "#458588",
  blue0 = "#458588",
  blue1 = "#65bcff",
  blue2 = "#0db9d7",
  green3 = "#8ec07c",
  blue6 = "#b4f9f8",
  blue7 = "#458588",
  comment = "#928374",
  cyan = "#86e1fc",
  pastelWhite = "#f2e5bc",
  dark5 = "#458588",
  fg = "#c8d3f5",
  fg_dark = "#828bb8",
  fg_gutter = "#f2e5bc",
  green = "#8ec07c",
  yesun = "#d79921",
  green2 = "#41a6b5",
  magenta = "#c099ff",
  magenta2 = "#ff007c",
  orange = "#ff966c",
  vibred = "#cc241d",
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

