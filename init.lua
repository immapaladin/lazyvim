-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("copilot").setup({})
require("orgmode").setup_ts_grammar()
require("onedark").setup({
  style = "darker",
})
require("onedark").load()
require("copilot").setup()