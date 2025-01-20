local ret = vim.deepcopy(require("nekonight.colors.storm"))

---@type Palette
return vim.tbl_deep_extend("force", ret, {
  bg = "#2E3440",
  bg_dark = "#2e3440",
  bg_dark1 = "#3b4252",
  bg_highlight = nil,
})
