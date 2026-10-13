set -U fish_greeting ""
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx VISUAL "nvim"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_prompt
	set -l last_status $status
	set -l stat

	set -l gruv_white "#fbf1c7"

	if test $last_status -ne 0
		set stat (set_color "#fb4934")" $last_status  "(set_color --reset)
	else
		set stat " " 
	end

	string join '' -- \n (set_color blue) (set_color --background white) ' 󰣇 ' (set_color black) ' '  (whoami) '  ' (prompt_pwd) ' ' (set_color white) (set_color --background normal) '' $stat
end

alias ll="ls -la"
alias vim="nvim"
alias bc="bc -q"
thefuck --alias | source
