 local M = {}

 function M.setup()
   require('base16-colorscheme').setup {
     -- Background tones
     base00 = '#0a1126', -- Default Background
     base01 = '#0f1b40', -- Lighter Background (status bars)
     base02 = '#132251', -- Selection Background
     base03 = '#526084', -- Comments, Invisibles
     -- Foreground tones
     base04 = '#99b6f2', -- Dark Foreground (status bars)
     base05 = '#e1e7f5', -- Default Foreground
     base06 = '#e1e7f5', -- Light Foreground
     base07 = '#e1e7f5', -- Lightest Foreground
     -- Accent colors
     base08 = '#d98886', -- Variables, XML Tags, Errors
     base09 = '#4e6ba6', -- Integers, Constants
     base0A = '#5581d9', -- Classes, Search Background
     base0B = '#99b6f2', -- Strings, Diff Inserted
     base0C = '#96b1e9', -- Regex, Escape Chars
     base0D = '#8eaef1', -- Functions, Methods
     base0E = '#96b1e9', -- Keywords, Storage
     base0F = '#892623', -- Deprecated, Embedded Tags
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
