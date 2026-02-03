return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      -- pyright will be automatically installed with mason and loaded with lspconfig
      vtsls = {},
      eslint = {
        settings = {
          workingDirectories = { mode = "auto" },
        },
      },
    },
    setup = {
      eslint = function()
        -- automatically fix linting errors on save (but otherwise do not format the document)
        vim.cmd([[
          autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js LspEslintFixAll
        ]])
      end,
    },
  },
}
