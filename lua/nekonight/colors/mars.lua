local ret = vim.deepcopy(require("nekonight.colors.storm"))

---@type Palette
return vim.tbl_deep_extend("force", ret, {
  bg = "#2a1a1a",
  bg_dark = "#1f1212",
  bg_dark1 = "#241414",
})
