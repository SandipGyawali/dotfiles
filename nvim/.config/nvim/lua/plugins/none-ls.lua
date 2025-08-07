return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylelua,
        null_ls.builtins.formatting.prettier, -- Choose either prettier or eslint_d
        -- null_ls.builtins.formatting.eslint_d,
      },
    })

    vim.keymap.set("n", "<leader>gf", function()
      vim.lsp.buf.format({ async = true })
    end, {})
  end,
}

