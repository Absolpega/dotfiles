# deps: starship, atuin, zoxide, eza, trash-cli

if status is-interactive
    fish_default_key_bindings
    #fish_vi_key_bindings

    fish_add_path -P ~/.local/bin ~/.cargo/bin ~/.luarocks/bin/

    starship init fish | source
    atuin init fish --disable-up-arrow | source
    zoxide init --cmd cd fish | source

    export VISUAL=nvim
    export EDITOR=nvim

    abbr l ls
    abbr rm trash

    alias ltree='eza --icons --hyperlink -T'
    alias ls='eza --icons --hyperlink -1'
    alias reload='source ~/.config/fish/config.fish'
    alias dotfiles='command git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

    function fish_greeting
    end
end

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/absolpega/.lmstudio/bin
# End of LM Studio CLI section

