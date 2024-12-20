local ret = vim.deepcopy(require("nekonight.colors.storm"))

---@type Palette
return vim.tbl_deep_extend("force", ret, {
  bg = "#292640",
  bg_dark = "#232136",
  bg_dark1 = "#232136",
  bg_highlight = nil,
})
