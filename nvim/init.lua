vim.opt.termguicolors = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"

vim.pack.add { { src = "https://github.com/RRethy/base16-nvim",          name = "base16-colorscheme" } }
vim.pack.add { { src = "https://github.com/goolord/alpha-nvim",          name = "alpha"              } }
vim.pack.add { { src = "https://github.com/catppuccin/nvim",             name = "catppuccin"         } }
vim.pack.add { { src = "https://github.com/sainnhe/gruvbox-material",    name = "gruvbox-material"   } } 
vim.pack.add { { src = "https://github.com/norcalli/nvim-colorizer.lua", name = "colorizer"          } }
vim.pack.add { { src = "https://github.com/m4xshen/autoclose.nvim",      name = "autoclose"          } }

local dashboard = require("dashboard")

require("alpha").setup(dashboard.config)
-- require("catppuccin").setup { flavour = "mocha" }
require("colorizer").setup()

vim.cmd.colorscheme("gruvbox-material")

-- local ok, matugen = pcall(require, 'matugen')
-- if ok then matugen.setup() end

require("autoclose").setup()
