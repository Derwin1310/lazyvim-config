return {
  "saghen/blink.cmp",
  opts = {
    sources = {
      default = { "lsp", "path", "snippets" },
      providers = {
        lsp = {
          score_offset = 0,
          fallbacks = {},
        },
      },
    },
    completion = {
      trigger = {
        show_on_insert = true,
        show_on_blocked_trigger_characters = {},
      },
      list = {
        max_items = 50,
      },
    },
  },
}
