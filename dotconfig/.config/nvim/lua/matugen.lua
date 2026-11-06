 local M = {}

 function M.setup()
   require('base16-colorscheme').setup {
     -- Background tones
     base00 = '#0b1824', -- Default Background
     base01 = '#12282f', -- Lighter Background (status bars)
     base02 = '#18353e', -- Selection Background
     base03 = '#476a65', -- Comments, Invisibles
     -- Foreground tones
     base04 = '#adb99b', -- Dark Foreground (status bars)
     base05 = '#e8e6c8', -- Default Foreground
     base06 = '#e8e6c8', -- Light Foreground
     base07 = '#e8e6c8', -- Lightest Foreground
     -- Accent colors
     base08 = '#d36f5a', -- Variables, XML Tags, Errors
     base09 = '#d4b071', -- Integers, Constants
     base0A = '#5a8f78', -- Classes, Search Background
     base0B = '#b1dfa6', -- Strings, Diff Inserted
     base0C = '#e9cb96', -- Regex, Escape Chars
     base0D = '#a6e996', -- Functions, Methods
     base0E = '#96e9c5', -- Keywords, Storage
     base0F = '#473234', -- Deprecated, Embedded Tags
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
