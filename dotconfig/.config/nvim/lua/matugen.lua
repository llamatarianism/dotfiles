 local M = {}

 function M.setup()
   require('base16-colorscheme').setup {
     -- Background tones
     base00 = '#232323', -- Default Background
     base01 = '#292929', -- Lighter Background (status bars)
     base02 = '#333333', -- Selection Background
     base03 = '#6d6d6d', -- Comments, Invisibles
     -- Foreground tones
     base04 = '#929292', -- Dark Foreground (status bars)
     base05 = '#c2c2c2', -- Default Foreground
     base06 = '#c2c2c2', -- Light Foreground
     base07 = '#c2c2c2', -- Lightest Foreground
     -- Accent colors
     base08 = '#a05b71', -- Variables, XML Tags, Errors
     base09 = '#d4a2ac', -- Integers, Constants
     base0A = '#c9afba', -- Classes, Search Background
     base0B = '#cc7e8b', -- Strings, Diff Inserted
     base0C = '#e996a6', -- Regex, Escape Chars
     base0D = '#e996a4', -- Functions, Methods
     base0E = '#e996b9', -- Keywords, Storage
     base0F = '#351821', -- Deprecated, Embedded Tags
   }
 end

 -- Register a signal handler for SIGUSR1 (matugen updates)
 local signal = vim.uv.new_signal()
 signal:start(
   'sigusr1',
   vim.schedule_wrap(function()
     package.loaded['matugen'] = nil
     require('matugen').setup()
   end)
 )

 return M
