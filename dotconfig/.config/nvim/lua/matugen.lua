 local M = {}

 function M.setup()
   require('base16-colorscheme').setup {
     -- Background tones
     base00 = '#1c1917', -- Default Background
     base01 = '#403833', -- Lighter Background (status bars)
     base02 = '#4b423c', -- Selection Background
     base03 = '#888f94', -- Comments, Invisibles
     -- Foreground tones
     base04 = '#888f94', -- Dark Foreground (status bars)
     base05 = '#b4bdc3', -- Default Foreground
     base06 = '#b4bdc3', -- Light Foreground
     base07 = '#b4bdc3', -- Lightest Foreground
     -- Accent colors
     base08 = '#de6e7c', -- Variables, XML Tags, Errors
     base09 = '#9f948f', -- Integers, Constants
     base0A = '#888f94', -- Classes, Search Background
     base0B = '#b4bdc3', -- Strings, Diff Inserted
     base0C = '#e9b096', -- Regex, Escape Chars
     base0D = '#96c8e9', -- Functions, Methods
     base0E = '#96c6e9', -- Keywords, Storage
     base0F = '#811825', -- Deprecated, Embedded Tags
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
