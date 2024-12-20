local ret = vim.deepcopy(require("nekonight.colors.storm"))

---@type Palette
return vim.tbl_deep_extend("force", ret, {
  bg = "#31364a",
  bg_dark = "#282C3D",
  bg_dark1 = "#282C3D",
  bg_highlight = "#7e57c2",
})
