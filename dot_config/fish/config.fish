if status is-interactive

    fish_default_key_bindings
    #fish_vi_key_bindings

    fish_add_path ~/.local/bin ~/.cargo/bin ~/.ghcup/bin ~/.luarocks/bin/

    starship init fish | source
    zoxide init --cmd cd fish | source
    source /usr/share/nnn/quitcd/quitcd.fish

    export VISUAL=nvim
    export EDITOR=nvim
    export GOPATH=.go

    alias ls='dirs; eza -L 1 -T --icons'
    alias l=ls
    alias la='ls -hal'
    alias lt='eza -T --icons'

    alias rm=trash

    alias reload='source ~/.config/fish/config.fish'

    export SUDO_ASKPASS="$(which askpass.lua 2> /dev/null)"
    [ -n $SUDO_ASKPASS ] && alias sudo='sudo -A'

    function fish_greeting
        # https://github.com/Absolpega/fetch
        command -v fetch >/dev/null && fetch
        true
    end
end
