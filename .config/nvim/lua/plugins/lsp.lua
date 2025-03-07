return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim", "love" }, -- Add "love" as a recognized global
            },
            workspace = {
              checkThirdParty = false,
              library = {
                vim.fn.expand("$VIMRUNTIME/lua"),
                vim.fn.stdpath("config") .. "/lua",
                "/usr/local/share/love", -- Adjust path if necessary
              },
            },
          },
        },
      },
    },
  },
}
