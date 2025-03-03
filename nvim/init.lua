-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("esqueleto").setup(
  {
    patterns = { "LICENSE", "README" },
  }
)