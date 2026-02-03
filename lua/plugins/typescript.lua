return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      vtsls = { enabled = false },
      tsgo = {},
    },
    setup = {
      tsgo = function()
        vim.api.nvim_create_user_command("TsSwitch", function()
          local tsgo_clients = vim.lsp.get_clients({ name = "tsgo" })
          local vtsls_clients = vim.lsp.get_clients({ name = "vtsls" })

          if #tsgo_clients > 0 then
            vim.lsp.enable("tsgo", false)
            vim.lsp.enable("vtsls", true)
            vim.notify("Switched to vtsls")
          elseif #vtsls_clients > 0 then
            vim.lsp.enable("vtsls", false)
            vim.lsp.enable("tsgo", true)
            vim.notify("Switched to tsgo")
          else
            vim.lsp.enable("tsgo", true)
            vim.notify("Started tsgo")
          end
        end, { desc = "Toggle between tsgo and vtsls" })
      end,
    },
  },
}
