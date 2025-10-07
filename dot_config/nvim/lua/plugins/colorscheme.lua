return {

  {
    "EdenEast/nightfox.nvim",
    lazy = false, -- Colorschemes should generally not be lazy-loaded
    priority = 1000, -- Colorschemes should be loaded before most other plugins
    config = true,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "carbonfox",
    },
  },
}
