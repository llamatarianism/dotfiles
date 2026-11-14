set -U fish_greeting ""
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx EDITOR "nvim"
set -gx VISUAL "nvim"
set -gx QT_QPA_PLATFORMTHEME "qt6ct"
set -gx _JAVA_AWT_WM_NONREPARENTING 1
set -l nixos_version "26.05"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_prompt
	set -l last_status $status
	set -l stat

	if test $last_status -ne 0
		set stat (set_color brred)" $last_status  "(set_color --reset)
	else
		set stat " " 
	end

	string join '' -- \n (set_color blue) (set_color --background brwhite) '  ' (set_color black) ' '  (whoami) '  ' (prompt_pwd) ' ' (set_color brwhite) (set_color --background normal) '' $stat
end

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	command yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
		builtin cd -- "$cwd"
	end
	command rm -f -- "$tmp"
end

function slayall -a name
	command killall $name && mpg123 ~/slayall.mp3
end

alias ll="ls -la"
alias icat="kitten icat"
alias vim="nvim"
alias bc="bc -q"
alias wtf="wtfutil"
alias search="nix-search"

# Created by `pipx` on 2026-11-01 23:20:31
set PATH $PATH /home/lune/.local/bin
