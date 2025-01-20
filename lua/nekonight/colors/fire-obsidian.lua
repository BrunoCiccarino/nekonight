local ret = vim.deepcopy(require("nekonight.colors.storm"))

---@type Palette
return vim.tbl_deep_extend("force", ret, {
  bg = "#000000",
  bg_dark = "#000000",
  bg_dark1 = "#000000",
  bg_highlight = "#000000",

})