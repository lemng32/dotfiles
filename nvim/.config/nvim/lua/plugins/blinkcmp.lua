return {
  'saghen/blink.cmp',
  dependencies = {
    'rafamadriz/friendly-snippets',
    'folke/lazydev.nvim',
  },

  version = '1.*',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = { preset = 'super-tab' },
    appearance = {
      nerd_font_variant = 'mono'
    },
    completion = {
      documentation = {
        auto_show = false,
        window = {
          border = "rounded",
        },
      },
      list = {
        selection = {
          auto_insert = false
        },
      },
      menu = {
        border = "rounded",
        draw = {
          padding = { 1, 2 },
          gap = 3,
          columns = { { 'label' }, { 'kind_icon', 'kind', gap = 1 }, },
          components = {
            kind_icon = {
              text = function(ctx) return "[" .. ctx.kind_icon .. "]" .. ctx.icon_gap end,
            },
            label = {
              width = { fill = true, max = 20 },
            },
          },
        },
      },
    },
    sources = {
      default = { "lazydev", "lsp", "path", "buffer" },
      providers = {
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          score_offset = 100,
        },
      },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
    cmdline = {
      enabled = true,
      keymap = { preset = 'inherit' },
      sources = { 'buffer', 'cmdline' },
      completion = {
        ghost_text = { enabled = true }
      },
    },
  },
  opts_extend = { "sources.default" },
}
