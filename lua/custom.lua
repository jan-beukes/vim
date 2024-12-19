return {
  -- Moving blocks
  {
    'fedepujol/move.nvim',
    config = function()
      require('move').setup {}
    end,
  },
  -- markdown
  {
    'toppair/peek.nvim',
    event = { 'VeryLazy' },
    build = 'deno task --quiet build:fast',
    config = function()
      require('peek').setup {
        app = 'firefox',
      }
      vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
      vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
    end,
  },
  -- Oil
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    opts = {
      columns = {
        'icon',
      },
      view_options = {
        show_hidden = true,
      },
    },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  },
}
