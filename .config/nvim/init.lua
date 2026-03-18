-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
require("lazy").setup({
  { "akinsho/bufferline.nvim", config = function()
    require("bufferline").setup()
  end },

  { "akinsho/toggleterm.nvim", config = function()
    require("toggleterm").setup({
      open_mapping = [[<C-t>]],
      direction = "float",
    })
  end },

})

-- Tab navigation
vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>")
vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLinePrev<cr>")
-- Yazi
vim.keymap.set("n", "<C-p>", "<cmd>Yazi<cr>")

-- New buffer
vim.keymap.set("n", "<C-n>", "<cmd>enew<cr>")

-- Close buffer
vim.keymap.set("n", "<C-q>", "<cmd>bd<cr>")

-- Open file (uses neovim's built in file finder)
vim.keymap.set("n", "<C-f>", "<cmd>e ")
