return {
  {
    "arminveres/md-pdf.nvim",
    branch = "main", -- you can assume that main is somewhat stable until releases will be made
    lazy = true,
    keys = {
      {
        "<leader>c,",
        function()
          require("md-pdf").convert_md_to_pdf()
        end,
        desc = "Markdown converter",
      },
    },
    ---@type md-pdf.config
    opts = {},
  },
}
