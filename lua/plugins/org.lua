return {
  {
    "nvim-orgmode/orgmode",
    config = function()
      require("orgmode").setup({
        org_agenda_files = "~/agenda/*.org",
        org_default_notes_file = "~/org/file.org",
        org_capture_templates = {

          r = {
            description = "Repo",
            template = "* [[%x][%(return string.match('%x', '([^/]+)$'))]]%?",
            target = "~/org/repos.org",
          },

          j = {
            description = "Journal",
            template = '* %(return vim.fn.getreg "w")',
            -- get the content of register "w"
            target = "~/org/journal.org",
          },
          p = {
            description = "Timecard",
            template = "* %^{Project|23-0000-001}\n %t \n Description: %^{Description}",
            target = "~/org/timecard.org",
          },
        },
        win_split_mode = function(name)
          local bufnr = vim.api.nvim_create_buf(false, true)
          --- Setting buffer name is required
          vim.api.nvim_buf_set_name(bufnr, name)

          local fill = 0.8
          local width = math.floor((vim.o.columns * fill))
          local height = math.floor((vim.o.lines * fill))
          local row = math.floor((((vim.o.lines - height) / 2) - 1))
          local col = math.floor(((vim.o.columns - width) / 2))

          vim.api.nvim_open_win(bufnr, true, {
            relative = "editor",
            width = width,
            height = height,
            row = row,
            col = col,
            style = "minimal",
            border = "rounded",
          })
        end,
      })
    end,
  },
}
