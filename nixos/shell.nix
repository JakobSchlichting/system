{ pkgs, ... }:

{
    programs.zsh.enable = true;
    users.users.soc.shell = pkgs.zsh;

    environment.systemPackages = with pkgs; [
        tmux
        stow
        starship
        eza
        ripgrep
        bat
    ];
}
