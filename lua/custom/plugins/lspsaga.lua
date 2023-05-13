return {
  'nvimdev/lspsaga.nvim',
  event = "LspAttach",
  dependencies = {
    { 'nvim-tree/nvim-web-devicons' },
    { 'nvim-treesitter/nvim-treesitter' }
  },

  config = function()
    require('lspsaga').setup({
      ui = {
        -- This option only works in Neovim 0.9
        title = true,
        -- Border type can be single, double, rounded, solid, shadow.
        border = "rounded",
        winblend = 0,
        expand = "",
        collapse = "",
        code_action = "💡",
        incoming = " ",
        outgoing = " ",
        hover = ' ',
        kind = {},

      },
      symbol_in_winbar = {
        enable = true,
        separator = " ",
        ignore_patterns = {},
        hide_keyword = true,
        show_file = true,
        folder_level = 2,
        respect_root = false,
        color_mode = true,
      }
    })

    local opts = { noremap = true, silent = true }

    -- Definitions
    vim.keymap.set('n', ']d', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
    vim.keymap.set('n', '[d', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
    vim.keymap.set("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>")
    -- Show buffer diagnostics
    vim.keymap.set("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>")
    vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
    vim.keymap.set('n', 'gf', '<Cmd>Lspsaga lsp_finder<CR>', opts)
    vim.keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<CR>", opts)
    vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
    vim.keymap.set("n", "gt", "<cmd>Lspsaga goto_type_definition<CR>", opts)
    vim.keymap.set('n', '<leader>t', '<Cmd>Lspsaga peek_type_definition<CR>', opts)

    vim.keymap.set('n', '<leader>rn', '<Cmd>Lspsaga rename<CR>', opts)

    -- code action
    vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>")
  end
}
