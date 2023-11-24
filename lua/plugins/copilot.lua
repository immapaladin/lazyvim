return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        panel = {
          keymap = {
            open = "<C-CR>",
          },
        },
        suggestion = {
          auto_trigger = true,
        },
      })
    end,
  },
}
