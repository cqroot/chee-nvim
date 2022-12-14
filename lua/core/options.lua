local M = {}

local get_option = require("core.utils").get

function M.load()
    vim.opt.mouse = "a"
    vim.opt.ignorecase = true
    vim.opt.wildignorecase = true

    vim.opt.backup = false
    vim.opt.writebackup = false
    vim.opt.swapfile = false

    vim.opt.expandtab = true
    vim.opt.smarttab = true
    vim.opt.smartindent = true
    vim.opt.autoindent = true
    vim.opt.tabstop = 4
    vim.opt.softtabstop = 4
    vim.opt.shiftwidth = 4

    vim.opt.number = true
    vim.opt.relativenumber = get_option("editor_relativenumber")
    vim.opt.termguicolors = true
    vim.opt.cursorline = true
    vim.opt.cursorcolumn = get_option("editor_cursorcolumn")
    vim.opt.colorcolumn = { 80, 120 }

    vim.opt.conceallevel = 0
    vim.opt.list = true
    vim.opt.listchars = {
        space = "·",
        tab = "»·",
        trail = "·",
        nbsp = "·",
        eol = "↴",
    }
    vim.opt.completeopt = { "menu", "menuone", "noselect" }
end

return M
