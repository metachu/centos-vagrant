function emacs
		echo "Using emacs client/daemon loader in config.fish..."
		if ps -ef | grep "emacs --daemon" | grep -v grep | grep (whoami)
		 	env emacsclient -t $argv
		else
			emacs --daemon
			env emacsclient -t $argv	
		end
end

. "$HOME/.config/fish/fish_prompt.fish"
. "$HOME/.config/fish/aliases.fish"
. "$HOME/.config/fish/exports.fish"

