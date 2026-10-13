#!/bin/bash

wallpaper_path=$(noctalia msg wallpaper-get)

if [[ $wallpaper_path =~ green ]]; then
	echo $(noctalia msg color-scheme-set community 'Gruvbox Material')
elif [[ $wallpaper_path =~ jade ]]; then
	echo $(noctalia msg color-scheme-set community 'Osaka jade')
elif [[ $wallpaper_path =~ blue ]]; then
	echo $(noctalia msg color-scheme-set builtin 'Nord')
elif [[ $wallpaper_path =~ pink ]]; then
	echo $(noctalia msg color-scheme-set custom 'Koneko_custom')
elif [[ $wallpaper_path =~ purple ]]; then
	echo $(noctalia msg color-scheme-set custom 'irene-purple-fth')
elif [[ $wallpaper_path =~ peach ]]; then
	echo $(noctalia msg color-scheme-set community 'Shinonome')
elif [[ $wallpaper_path =~ red ]]; then
	echo $(noctalia msg color-scheme-set community 'Murata')
elif [[ $wallpaper_path =~ cool ]]; then
	echo $(noctalia msg color-scheme-set community 'Jiva Paper')
fi
