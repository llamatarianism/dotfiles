local colors_name = "fen"
vim.g.colors_name = "fen"
local bg = "dark"

local util = require "zenbones.util"
local lush = require "lush"
local hsluv = lush.hsluv

local palette

local base = {
	fen0 = hsluv "#0B1824",
	fen1 = hsluv "#12282F",
	fen2 = hsluv "#29483D",
	fen3 = hsluv "#76847A",
	fen4 = hsluv "#ADB99B",
	fen5 = hsluv "#CACCAD",
	fen6 = hsluv "#E8E6C8",
	fen7 = hsluv "#EEECD6",
	fen8 = hsluv "#D97A60",
	fen9 = hsluv "#D49668",
	fen10 = hsluv "#D4B071",
	fen11 = hsluv "#B1DfA6",
	fen12 = hsluv "#75AA99",
	fen13 = hsluv "#668A94",
	fen14 = hsluv "#BE8573",
	fen15 = hsluv "#A0766C",
}

palette = util.palette_extend({
	bg = base.fen0,
	fg = base.fen6,
	rose = base.fen11,
	leaf = base.fen14,
	wood = base.fen12,
	water = base.fen7,
	blossom = base.fen15,
	sky = base.fen8,
    sea = base.fen13,
    dirt = base.fen4,
    mustard = base.fen10,
}, "dark")


-- Generate the lush specs using the generator util
local generator = require "zenbones.specs"
local base_specs = generator.generate(palette, bg, generator.get_global_config(colors_name, "dark"))

-- Optionally extend specs using Lush
local specs = lush.extends({ base_specs }).with(function()
	return {
		Statement { base_specs.Statement, fg = palette.wood },
		Special { fg = palette.sky },
		Type { fg = palette.sky, gui = "italic" },
        Identifier { fg = palette.water },
        String { fg = palette.rose },
        Number { fg = palette.leaf },
        Function { fg = palette.mustard },
	}
end)

-- Pass the specs to lush to apply
lush(specs)
