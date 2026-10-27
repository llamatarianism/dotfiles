local colors_name = "pinkybones"
vim.g.colors_name = colors_name 

local util = require "zenbones.util"
local lush = require "lush"
local hsluv = lush.hsluv

local bg = "dark"

local base = {
	pinky0 = hsluv "#312f3f", -- "#3f2d3b"
	pinky1 = hsluv "#513a41",
	pinky2 = hsluv "#5e424c",
	pinky3 = hsluv "#6b4d57",
	pinky4 = hsluv "#e8d7dd",
	pinky5 = hsluv "#efe3e8",
	pinky6 = hsluv "#f4edf0",
	pinky7 = hsluv "#bb8fbc",
	pinky8 = hsluv "#d187c1",
	pinky9 = hsluv "#c181a1",
	pinky10 = hsluv "#aa5d80",
	pinky11 = hsluv "#bf6188",
	pinky12 = hsluv "#d08770",
	pinky13 = hsluv "#ebcb8b",
	pinky14 = hsluv "#a3be8c",
	pinky15 = hsluv "#8faeb5",
}

local palette = util.palette_extend({
	bg = base.pinky0,
	fg = base.pinky6,
	rose = base.pinky11,
	leaf = base.pinky14,
	wood = base.pinky12,
	water = base.pinky7,
	blossom = base.pinky15,
	sky = base.pinky8,
}, "dark")


-- Generate the lush specs using the generator util
local generator = require "zenbones.specs"
local base_specs = generator.generate(palette, bg, generator.get_global_config(colors_name, bg))
-- Optionally extend specs using Lush
local specs = lush.extends({ base_specs }).with(function()
	return {
		Statement { base_specs.Statement, fg = palette.rose },
		Special { fg = palette.water },
		Type { fg = palette.sky, gui = "italic" },
	}
end)

-- Pass the specs to lush to apply
lush(specs)

-- Generate the lush specs using the generator util
local generator = require "zenbones.specs"
local base_specs = generator.generate(palette, bg, generator.get_global_config(colors_name, bg))

-- Optionally extend specs using Lush
local specs = lush.extends({ base_specs }).with(function()
	return {
		Statement { base_specs.Statement, fg = palette.rose },
		Special { fg = palette.water },
		Type { fg = palette.sky, gui = "italic" },
	}
end)

-- Pass the specs to lush to apply
lush(specs)

require("zenbones.term").apply_colors(palette)
