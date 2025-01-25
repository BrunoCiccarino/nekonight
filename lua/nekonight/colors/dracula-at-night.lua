local ret = vim.deepcopy(require("nekonight.colors.storm"))

---@type Palette
return vim.tbl_deep_extend("force", ret, {
  bg = "#0E1419",
  bg_dark = "#282a36",
  bg_dark1 = "#282a36",
  blue = "#7aa2f7",
  blue0 = "#3d59a1",
  blue1 = "#2ac3de",
  blue2 = "#0db9d7",
  blue5 = "#89ddff",
  blue6 = "#b4f9f8",
  blue7 = "#394b70",
  comment = "#6272a4",
  cyan = "#7dcfff",
  dark3 = "#545c7e",
  dark5 = "#737aa2",
  fg = "#c0caf5",
  fg_gruvbox = "#f9f5d7",
  fg_dark = "#a9b1d6",
  fg_gutter = "#3b4261",
  green = "#50fa7b",
  green1 = "#73daca",
  green2 = "#41a6b5",
  magenta = "#bb9af7",
  magenta2 = "#ff007c",
  orange = "#ff9e64",
  purple = "#ff79c6",
  red = "#f7768e",
  red1 = "#db4b4b",
  teal = "#1abc9c",
  terminal_black = "#282a36",
  yellow = "#e0af68",
  git = {
    add = "#449dab",
    change = "#6183bb",
    delete = "#914c54",
  },
})
