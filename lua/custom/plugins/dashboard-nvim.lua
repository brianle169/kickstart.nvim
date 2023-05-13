return {
  'glepnir/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
      theme = 'doom',
      disable_move = true,
      config = {
        header = {
          '',
          '                                                       ',
          '                                                       ',
          '                                                       ',
          '                                                       ',
          '                                                       ',
          '                                                       ',
          '                                                       ',
          ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
          ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
          ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
          ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
          ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
          ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
          '                                                       ',
          '                                                       ',
          '                                                       ',
          '',
        },
        center = {
          {
            icon = '󰉋   ',
            icon_hl = 'String',
            desc = 'Open File Tree',
            desc_hl = 'Function',
            key = 'n',
            key_hl = 'Boolean',
            action = function()
              vim.cmd 'Neotree toggle=true <CR>'
            end,
          },
          {
            icon = '󰈙   ',
            icon_hl = 'String',
            desc = 'Search Files',
            desc_hl = 'Function',
            key = 'f',
            key_hl = 'Boolean',
            action = function()
              vim.cmd 'Telescope find_files'
            end,
          },
          {
            icon = '   ',
            icon_hl = 'String',
            desc = 'Search Old Files',
            desc_hl = 'Function',
            key = '?',
            key_hl = 'Boolean',
            action = function()
              vim.cmd 'Telescope oldfiles'
            end,
          },
          {
            icon = '   ',
            icon_hl = 'String',
            desc = 'Search Live Grep',
            desc_hl = 'Function',
            key = 'g',
            key_hl = 'Boolean',
            action = function()
              vim.cmd 'Telescope live_grep'
            end,
          },
          {
            icon = '󰌋   ',
            icon_hl = 'String',
            desc = 'Search Keymaps',
            desc_hl = 'Function',
            key = 'm',
            key_hl = 'Boolean',
            action = function()
              vim.cmd 'Telescope keymaps'
            end,
          },
          {
            icon = '   ',
            icon_hl = 'String',
            desc = 'View Lazy Plugins',
            desc_hl = 'Function',
            key = 'l',
            key_hl = 'Boolean',
            action = function()
              vim.cmd 'Lazy'
            end,
          },

          {
            icon = '   ',
            icon_hl = 'String',
            desc = 'Quit NeoVIM (Yes you can exit VIM)',
            desc_hl = 'Function',
            key = 'q',
            key_hl = 'Boolean',
            action = function()
              vim.cmd 'q'
            end,
          },
        },
        footer = {
          '                                                       ',
          '                                                       ',
          '                                                       ',
          ' Welcome to the work station of Binobo ',
        }, --your footer
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
