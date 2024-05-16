return { -- override nvim-cmp plugin
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-emoji", -- add cmp source as dependency of cmp
  },
  -- override the options table that is used in the `require("cmp").setup()` call
  opts = function(_, opts)
    -- opts parameter is the default options table
    -- the function is lazy loaded so cmp is able to be required
    local cmp = require("cmp")
    -- modify the sources part of the options table
    opts.sources = cmp.config.sources({
      { name = "cody",           priority = 1000 },
      { name = "nvim_lsp",       priority = 1000 },
      { name = "luasnip",        priority = 750 },
      { name = "markdown-oxide", priority = 500 },
      { name = "buffer",         priority = 500 },
      { name = "path",           priority = 250 },
      { name = "emoji",          priority = 700 }, -- add new source
    })
    opts.mapping = {
      ["<Tab>"] = function(fallback)
        fallback() -- Always fall back to the default behavior
      end,
      ["<S-Tab>"] = function(fallback)
        fallback() -- Always fall back to the default behavior
      end,
      ["<C-p>"] = cmp.mapping.select_prev_item(),
      ["<C-n>"] = cmp.mapping.select_next_item(),
      ["<C-d>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.close(),
      ["<CR>"] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
      },
    }
  end,
}
