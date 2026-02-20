return {
  "nvim-treesitter/nvim-treesitter-context",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  event = "VeryLazy",
  opts = {
    enable = true, -- Enable this plugin (default)
    max_lines = 0, -- How many lines the context window should show (0 = no limit)
    min_window_height = 0, -- Minimum editor window height to enable context (0 = always)
    line_numbers = true, -- Show line numbers in the context window
    multiline_threshold = 1, -- Maximum number of lines to show for a single context
    trim_scope = "outer", -- Which context lines to discard if max_lines is exceeded ('outer' or 'inner')
    mode = "cursor", -- Line used to calculate context ('cursor' or 'topline')
    separator = nil, -- Separator between context and content (nil = no separator)
    zindex = 20, -- The Z-index of the context window
    on_attach = nil, -- Callback when attaching to a buffer
  },
  keys = {
    {
      "[c",
      function()
        require("treesitter-context").go_to_context(vim.v.count1)
      end,
      desc = "Jump to context",
    },
  },
}
