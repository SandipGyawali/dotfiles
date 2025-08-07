return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      --telescope fuzzy find for the files.
      local builtin = require("telescope.builtin")

      --vim keybindings
      vim.keymap.set('n', '<C-p>', builtin.find_files, {noremap = true, silent = true })
    end
}
