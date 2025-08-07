-- Bootstrap lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  print("Installing lazy.nvim...")
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
  print("Please restart Neovim after installation completes.")
  return -- ⛔ Prevents loading lazy.nvim before it exists
end

vim.opt.rtp:prepend(lazypath)

-- ✅ Now it's safe to require lazy
require("lazy").setup({
  { import = "plugins" },
})

require("vim-options")
