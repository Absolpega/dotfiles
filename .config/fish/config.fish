if status is-interactive
    fish_default_key_bindings
    #fish_vi_key_bindings

    fish_add_path -P ~/.local/bin ~/.cargo/bin ~/.luarocks/bin/

    starship init fish | source
    atuin init fish --disable-up-arrow | source
    zoxide init --cmd cd fish | source
    #pyenv init - fish | source

    #if test -f /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish
    #    source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish
    #end
    #if test -f /nix/var/nix/profiles/default/share/fish/vendor_completions.d/nix.fish
    #    source /nix/var/nix/profiles/default/share/fish/vendor_completions.d/nix.fish
    #end

    export VISUAL=nvim
    export EDITOR=nvim

    abbr l ls
    abbr rm trash

    alias ltree='eza --icons --hyperlink -T'
    alias ls='eza --icons --hyperlink -1'
    alias reload='source ~/.config/fish/config.fish'
    alias dotfiles='command git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

    # https://github.com/Absolpega/lua-askpass
    #set askpass askpass.lua
    set askpass systemd-ask-password
    export SUDO_ASKPASS="$(which $askpass 2> /dev/null)"
    [ -n $SUDO_ASKPASS ] && alias sudo='sudo -A'

    function fish_greeting
        # https://github.com/Absolpega/lffetch
        set fetch "$(which lffetch.lua 2> /dev/null)"
        [ -n $fetch ] && eval $fetch
    end
end
