-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.guicursor = table.concat({
  "n-v-c-sm:block-Cursor",
  "i-ci-ve:ver50-Cursor",
  "r-cr-o:hor20-Cursor",
  "t:block-blinkon500-blinkoff500-TermCursor",
}, ",")

local function set_cursor_highlights()
  vim.api.nvim_set_hl(0, "Cursor", { fg = "#eff1f5", bg = "#d20f39" })
  vim.api.nvim_set_hl(0, "lCursor", { fg = "#eff1f5", bg = "#d20f39" })
  vim.api.nvim_set_hl(0, "TermCursor", { fg = "#eff1f5", bg = "#d20f39" })
end

set_cursor_highlights()

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = set_cursor_highlights,
})
