vim.opt.termguicolors = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.clipboard = "unnamedplus"
vim.g.mapleader = " "

vim.pack.add { { src = "https://github.com/RRethy/base16-nvim",           name = "base16-colorscheme" } }
vim.pack.add { { src = "https://github.com/rose-pine/neovim",             name = "rose-pine"          } }
vim.pack.add { { src = "https://github.com/rktjmp/lush.nvim",             name = "lush"               } }
vim.pack.add { { src = "https://github.com/zenbones-theme/zenbones.nvim", name = "zenbones"           } }
vim.pack.add { { src = "https://github.com/anAcc22/sakura.nvim",          name = "sakura"             } }
vim.pack.add { { src = "https://github.com/nvim-lualine/lualine.nvim",    name = "lualine.nvim"       } }
vim.pack.add { { src = "https://github.com/nvim-tree/nvim-web-devicons",  name = "nvim-web-devicons"  } }
vim.pack.add { { src = "https://github.com/windwp/nvim-autopairs",        name = "nvim-autopairs"     } }
vim.pack.add { { src = "https://github.com/nvim-tree/nvim-tree.lua",      name = "nvim-tree.lua"      } }
vim.pack.add { { src = "https://github.com/numToStr/FTerm.nvim",          name = "FTerm.nvim"         } }
vim.pack.add { { src = "https://github.com/brenoprata10/nvim-highlight-colors", name = "nvim-highlight-colors" } }
vim.pack.add { { src = "https://github.com/nvim-treesitter/nvim-treesitter",    name = "nvim-treesitter" } }

local dashboard = require("dashboard")
local fen = require("fen")

require("nvim-treesitter").install { "toml", "nix", "lua", "yuck", "scss" }

require("lualine").setup()

require("nvim-autopairs").setup()

require("nvim-tree").setup()

require("FTerm").setup({
    border = "double",
})

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

vim.g.zenbones = { darkness = warm }
