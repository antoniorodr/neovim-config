return {
    {
      "mechatroner/rainbow_csv",
      event = { "BufReadPre", "BufNewFile" },
      config = function()
        vim.cmd("let g:rbql_with_headers = 1")
      end,
    }
  }
  