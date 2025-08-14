return {
  {
    'Olical/conjure',
    ft = { 'clojure', 'fennel', 'hy', 'commonlisp', 'scheme' }, -- etc
    lazy = true,
    init = function()
      -- Set configuration options here
      -- Uncomment this to get verbose logging to help diagnose internal Conjure issues
      -- This is VERY helpful when reporting an issue with the project
      vim.g['conjure#debug'] = true
    end,

    -- Optional cmp-conjure integration
    dependencies = { 'PaterJason/cmp-conjure' },
  },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp', -- LSP completion source
      'hrsh7th/cmp-buffer', -- Buffer completion source
      'hrsh7th/cmp-path', -- Path completion source
      'hrsh7th/cmp-cmdline', -- Command-line completion source
      -- Add other cmp sources as needed, e.g., for snippets
      -- "L3MON4D3/LuaSnip",
      -- "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      -- Your nvim-cmp setup goes here
      local cmp = require 'cmp'
      cmp.setup {
        snippet = {
          expand = function(args)
            -- Configure your snippet engine here, e.g., LuaSnip
            -- require("luasnip").lsp_expand(args.body)
          end,
        },
        sources = cmp.config.sources {
          { name = 'nvim_lsp' },
          { name = 'buffer' },
          { name = 'path' },
          { name = 'cmdline' },
        },
        -- Add other nvim-cmp configurations like mappings, formatting, etc.
      }
    end,
  },
  {
    'PaterJason/cmp-conjure',
    lazy = true,
    config = function()
      local cmp = require 'cmp'
      local config = cmp.get_config()
      table.insert(config.sources, { name = 'conjure' })
      return cmp.setup(config)
    end,
  },
}
