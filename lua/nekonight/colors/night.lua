local ret = vim.deepcopy(require("nekonight.colors.storm"))

---@type Palette
return vim.tbl_deep_extend("force", ret, {
  bg = "#231b2f",
  bg_dark = "#1b1524",
  bg_dark1 = "#1b1524",
  bg_highlight = "#515c6a",
  green = "#50fa7b",
})
