vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- visual
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true

vim.o.visualbell = true
vim.o.number = false
vim.o.cursorline = true
vim.o.showmatch = true
vim.o.matchtime = 1

vim.o.swapfile = false
vim.opt.isk:append({ "-" })
vim.o.updatetime = 100
vim.o.mouse = false

vim.o.splitbelow = true
vim.o.splitright = true

vim.o.laststatus = 2
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.shiftwidth = 2

if vim.fn.has("mac") == 1 then
	vim.o.clipboard = "unnamed"
elseif vim.fn.has("unix") then
	vim.o.clipboard = "unnamedplus"
end

-- search
vim.o.incsearch = true
vim.o.inccommand = "split"
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.keymap.set("n", "<C-h>", ":nohl<CR>", { noremap = true, silent = true })

-- manipulation
vim.g.mapleader = "\\"
vim.o.ttimeout = true
vim.o.ttimeoutlen = 50
vim.opt.diffopt:append({ "vertical" })

vim.o.undofile = true
vim.o.undodir = vim.fn.stdpath("cache") .. "/undo"

-- word-base moving
vim.keymap.set("n", "w", "W", { noremap = true, silent = true })
vim.keymap.set("n", "e", "E", { noremap = true, silent = true })
vim.keymap.set("n", "E", "gE", { noremap = true, silent = true })
vim.keymap.set("n", "b", "B", { noremap = true, silent = true })

-- terminal
vim.keymap.set("t", "<ESC>", [[<C-\><C-n>]], { noremap = true, silent = true })

-- colorscheme
vim.o.background = "dark"
vim.api.nvim_set_hl(0, "NormalFloat", { guifg = white, guibg = black })
vim.api.nvim_set_hl(0, "SignColumn", { link = Normal })
vim.o.termguicolors = true
vim.opt.fillchars = { vert = "░", fold = " ", eob = " " }

-- conceal
vim.o.conceallevel = 0

-- fold
vim.o.foldmethod = "syntax"
vim.o.foldlevel = 100
vim.o.foldcolumn = "0"

-- disable ruby provider
vim.g.ruby_path = ""

-- auto blackets
-- vim.keymap.set('i', '{}', '{}<Left>', { noremap = true, silent = true})
-- vim.keymap.set('i', '{<Enter>', '{}<Left><CR><ESC><S-o>', { noremap = true, silent = true})
-- vim.keymap.set('i', '()', '()<Left>', { noremap = true, silent = true})
-- vim.keymap.set('i', '(<Enter>', '()<Left><CR><ESC><S-o>', { noremap = true, silent = true})
-- vim.keymap.set('i', '<>', '<><Left>', { noremap = true, silent = true})
-- vim.keymap.set('i', '<<Enter>', '<><Left><CR><ESC><S-o>', { noremap = true, silent = true})

-- for tabline
vim.opt.sessionoptions:append({ "tabpages", "globals" })

-- diagnostic
vim.keymap.set("n", "K", vim.diagnostic.open_float, { noremap = true, silent = true })

require("lazy_nvim")
require("rails")
