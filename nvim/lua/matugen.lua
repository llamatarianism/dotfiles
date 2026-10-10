 local M = {}

 function M.setup()
   require('base16-colorscheme').setup {
     -- Background tones
     base00 = '#1a1d20', -- Default Background
     base01 = '#2d3339', -- Lighter Background (status bars)
     base02 = '#363d44', -- Selection Background
     base03 = '#5f6972', -- Comments, Invisibles
     -- Foreground tones
     base04 = '#ebcfb2', -- Dark Foreground (status bars)
     base05 = '#ebcfb2', -- Default Foreground
     base06 = '#ebcfb2', -- Light Foreground
     base07 = '#ebcfb2', -- Lightest Foreground
     -- Accent colors
     base08 = '#b38d97', -- Variables, XML Tags, Errors
     base09 = '#c5baaf', -- Integers, Constants
     base0A = '#b38d97', -- Classes, Search Background
     base0B = '#d5aca9', -- Strings, Diff Inserted
     base0C = '#e9bf96', -- Regex, Escape Chars
     base0D = '#e99b96', -- Functions, Methods
     base0E = '#e996ac', -- Keywords, Storage
     base0F = '#5d303c', -- Deprecated, Embedded Tags
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
