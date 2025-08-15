return {
  'nvim-neorg/neorg',
  lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
  version = '*', -- Pin Neorg to the latest stable release
  config = true,
  --  {
  --    'nvim-orgmode/orgmode',
  --    event = 'VeryLazy',
  --    config = function()
  --      -- Setup orgmode
  --      require('orgmode').setup {
  --        org_agenda_files = '~/orgfiles/**/*',
  --        org_default_notes_file = '~/orgfiles/refile.org',
  --      }
  --    end,
  --  },
  --  {
  --    'chipsenkbeil/org-roam.nvim',
  --    tag = '0.1.1',
  --    dependencies = {
  --      {
  --        'nvim-orgmode/orgmode',
  --        tag = '0.3.7',
  --      },
  --    },
  --    config = function()
  --      require('org-roam').setup {
  --        directory = '~/org_roam_files',
  --        -- optional
  --      }
  --    end,
  --  },
}
