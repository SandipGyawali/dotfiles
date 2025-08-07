  return {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    config = function()
      local treesitterconfig = require("nvim-treesitter.configs")
      treesitterconfig.setup({
        ensure_installed = {"lua", "javascript", "html", "typescript", "css", "bash", "json", "vim"},
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }
