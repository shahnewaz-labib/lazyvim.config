return {
  "christoomey/vim-tmux-navigator",
  init = function()
    vim.g.tmux_navigator_no_mappings = 1
  end,
  keys = {
    { "<C-w>h", "<cmd>TmuxNavigateLeft<cr>", mode = { "n", "t" }, desc = "Navigate left" },
    { "<C-w>j", "<cmd>TmuxNavigateDown<cr>", mode = { "n", "t" }, desc = "Navigate down" },
    { "<C-w>k", "<cmd>TmuxNavigateUp<cr>", mode = { "n", "t" }, desc = "Navigate up" },
    { "<C-w>l", "<cmd>TmuxNavigateRight<cr>", mode = { "n", "t" }, desc = "Navigate right" },
  },
}
