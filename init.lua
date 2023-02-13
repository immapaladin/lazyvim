-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("copilot").setup({})
require("onedark").setup({
  style = "darker",
  transparent = false,
})
require("onedark").load()
-- require("copilot").setup()
