return {
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "help",
        "html",
        "javascript",
        "json",
        "lua",
        -- "markdown",
        -- "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "svelte",
        "org",
      },
    },
  },
  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "autopep8",
        "css-lsp",
        "html-lsp",
        "jedi-language-server",
        "json-lsp",
        "lua-language-server",
        -- "marksman",
        "powershell-editor-services",
        "prettier",
        "prisma-language-server",
        "shellcheck",
        "svelte-language-server",
        "tailwindcss-language-server",
        "typescript-language-server",
        "yaml-language-server",
      },
    },
  },
}