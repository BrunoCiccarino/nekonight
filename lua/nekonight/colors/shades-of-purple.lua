local ret = vim.deepcopy(require("nekonight.colors.storm"))

---@type Palette
return vim.tbl_deep_extend("force", ret, {
  bg = "#2D2B55",
  bg_dark = "#1E1E3F",
  bg_dark1 = "#1E1E3F",
  bg_highlight = nil,
})
