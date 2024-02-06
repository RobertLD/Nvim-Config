-- Tabs are two spaces
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- Line Style
vim.wo.relativenumber = true
vim.o.cursorline = true
vim.o.cursorcolumn = true
vim.wo.wrap = false

vim.g.mapleader = " "

-- Bootstrap Lazyvim installation
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

---@diagnostic disable-next-line: unused-local
local opts = {}
require("lazy").setup("plugins") -- package manager
