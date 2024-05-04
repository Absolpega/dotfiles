if status is-interactive
    fish_default_key_bindings
    #fish_vi_key_bindings

    fish_add_path ~/.local/bin ~/.cargo/bin ~/.luarocks/bin/

    starship init fish | source
    zoxide init --cmd cd fish | source

    export VISUAL=nvim
    export EDITOR=nvim

    alias ltree='eza -T --icons'
    alias ls='ltree -L 1'
    alias l=ls

    alias rm=trash

    alias reload='source ~/.config/fish/config.fish'

    alias dotfiles='command git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

    # https://github.com/Absolpega/lua-askpass
    export SUDO_ASKPASS="$(which askpass.lua 2> /dev/null)"
    [ -n $SUDO_ASKPASS ] && alias sudo='sudo -A'

    function fish_greeting
        # https://github.com/Absolpega/fetch
        command -v fetch >/dev/null && fetch || true
    end
end
