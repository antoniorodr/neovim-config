return {
  "NachoNievaG/atac.nvim",
  dependencies = { "akinsho/toggleterm.nvim" },
  config = function()
    local atac = require("atac")
    atac.setup({ dir = vim.fn.getcwd() })
    vim.api.nvim_create_autocmd("DirChanged", {
      callback = function()
        atac.setup({ dir = vim.fn.getcwd() })
      end,
    })
  end,
}
