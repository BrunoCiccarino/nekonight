local ret = vim.deepcopy(require("nekonight.colors.storm"))

---@type Palette
return vim.tbl_deep_extend("force", ret, {
  bg = "#1E1E3F",
  bg_dark = "#2D2B55",
  bg_dark1 = "#2D2B55",
  bg_highlight = nil,
})
