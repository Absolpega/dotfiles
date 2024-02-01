if status is-interactive

    # -----------------------------------------------------------------------------------------------------

    fish_vi_key_bindings

    fish_add_path ~/.local/bin ~/.cargo/bin ~/.ghcup/bin ~/.luarocks/bin/

    export VISUAL=nvim
    export EDITOR=nvim

    # -----------------------------------------------------------------------------------------------------

    alias ls='dirs; eza -L 1 -T --icons'
    alias l=ls
    alias la='ls -hal'
    alias lt='eza -T --icons'

    alias j=z

    alias reload='source ~/.config/fish/config.fish'

    export SUDO_ASKPASS="$(which lua-askpass 2> /dev/null || which ~/.luarocks/bin/askpass.lua 2> /dev/null)"
    alias sudo='sudo -A'

    function rm

    end

    # -----------------------------------------------------------------------------------------------------

    starship init fish | source

    zoxide init fish | source

    source /usr/share/nnn/quitcd/quitcd.fish


    # this just renames starship's prompt so i can have my own fish_prompt
    # needs to be erased before being copied
    functions --erase starship_prompt
    functions --copy fish_prompt starship_prompt

    functions --erase starship_right_prompt
    functions --copy fish_right_prompt starship_right_prompt


    # -----------------------------------------------------------------------------------------------------

    # these need to be after starship
    function fish_prompt
        starship_prompt
    end

    function fish_right_prompt
        starship_right_prompt
    end

    function fish_greeting
        # https://github.com/Absolpega/fetch
        command -v fetch >/dev/null && fetch
        true
    end
end
