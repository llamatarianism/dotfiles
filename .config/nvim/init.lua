vim.opt.termguicolors = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.clipboard = "unnamedplus"
vim.g.mapleader = " "

vim.pack.add { { src = "https://github.com/nvim-lualine/lualine.nvim",    name = "lualine.nvim"       } }
vim.pack.add { { src = "https://github.com/nvim-tree/nvim-web-devicons",  name = "nvim-web-devicons"  } }
vim.pack.add { { src = "https://github.com/windwp/nvim-autopairs",        name = "nvim-autopairs"     } }
vim.pack.add { { src = "https://github.com/nvim-tree/nvim-tree.lua",      name = "nvim-tree.lua"      } }
vim.pack.add { { src = "https://github.com/numToStr/FTerm.nvim",          name = "FTerm.nvim"         } }
vim.pack.add { { src = "https://github.com/brenoprata10/nvim-highlight-colors", name = "nvim-highlight-colors" } }
vim.pack.add { { src = "https://github.com/nvim-treesitter/nvim-treesitter",    name = "nvim-treesitter" } }
vim.pack.add { { src = "https://github.com/sainnhe/gruvbox-material",           name = "gruvbox-material" } }


require("nvim-treesitter").install { "toml", "nix", "lua", "yuck", "scss" }

require("lualine").setup()

require("nvim-autopairs").setup()

require("nvim-tree").setup()

require("FTerm").setup({
    border = 'rounded',
})

vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })

require("nvim-highlight-colors").setup {
	render = "background",
	enable_hex = true,
	enable_short_hex = true,
	enable_rgb = true,
	enable_hsl = true,
	enable_ansi = true,
	enable_xterm256 = true,
	enable_xtermTrueColor = true,
	exclude_buffer = function(bufnr) end
}

vim.g.gruvbox_material_better_performance = 1
vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_foreground = "mix" -- material, original

vim.cmd("colorscheme gruvbox-material")

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>q', '<CMD>lua require("FTerm").toggle()<CR>')

