return {
  "pocco81/true-zen.nvim",
  lazy = false,
  opts = {
    integrations = {
      tmux = true,
    },
  },
  config = function(_plugin, opts)
    require("true-zen").setup(opts)
  end
}
