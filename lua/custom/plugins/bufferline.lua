return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup({
      options = {
        mode = "tabs",
        always_show_bufferline = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        color_icons = true,
        separator_style = 'padded_slant',
        show_tab_indicators = false,
        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function(count, level)
          local icon = level:match("error") and " " or ""
          return " " .. icon .. count
        end,
      },
      highlights = {
        separator = {
          fg = '#073642',
          bg = '#002b36',
        },
        separator_selected = {
          fg = '#073642',
        },
        background = {
          fg = '#657b83',
          bg = '#002b36'
        },
        buffer_selected = {
          fg = '#fdf6e3',
          gui = "bold",
        },
        fill = {
          bg = '#073642'
        }
      },
    })
    vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', { silent = true })
    vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', { silent = true })
  end
}
