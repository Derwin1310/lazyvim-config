return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        dartls = { enabled = false },
      },
    },
  },
  {
    "nvim-flutter/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "mfussenegger/nvim-dap",
    },
    keys = {
      { "<leader>f", "", desc = "+flutter" },
      { "<leader>fr", "<cmd>FlutterRun<cr>", desc = "Run" },
      { "<leader>fd", "<cmd>FlutterDevices<cr>", desc = "Devices" },
      { "<leader>fe", "<cmd>FlutterEmulators<cr>", desc = "Emulators" },
      { "<leader>fl", "<cmd>FlutterReload<cr>", desc = "Hot Reload" },
      { "<leader>fg", "<cmd>FlutterLogToggle<cr>", desc = "Toggle Log" },
      { "<leader>fs", "<cmd>FlutterRestart<cr>", desc = "Hot Restart" },
      { "<leader>fo", "<cmd>FlutterOutlineToggle<cr>", desc = "Toggle Outline" },
      { "<leader>ft", "<cmd>FlutterDevTools<cr>", desc = "DevTools" },
      { "<leader>fq", "<cmd>FlutterQuit<cr>", desc = "Quit" },
    },
    opts = {
      debugger = {
        enabled = false,
        exception_breakpoints = {},
      },
      dev_log = {
        enabled = false,
        notify_errors = false,
        open_cmd = "15split",
      },
      dev_tools = {
        autostart = false,
        auto_open_browser = false,
      },
      outline = {
        auto_open = false,
        open_cmd = "30vnew",
      },
      closing_tags = {
        enabled = true,
        highlight = "ErrorMsg",
        prefix = ">",
        priority = 10,
      },
      lsp = {
        color = {
          enabled = true,
        },
        settings = {
          showTodos = true,
          completeFunctionCalls = true,
          renameFilesWithClasses = "always",
          updateImportsOnRename = true,
          enableSnippets = true,
        },
      },
    },
    config = function(_, opts)
      require("flutter-tools").setup(opts)
    end,
  },
}
