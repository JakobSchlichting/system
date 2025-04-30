{ pkgs, ... }:

{
    fonts = {
        enableDefaultPackages = true;
        packages = with pkgs; [ 
            ubuntu_font_family
            liberation_ttf
            # Persian Font
            vazir-fonts
            # Nerd Font
            (nerdfonts.override { fonts = [ "FiraCode" "JetBrainsMono" ]; })
            fira-code
            jetbrains-mono
        ];
        fontconfig = {
            defaultFonts = {
                serif = [  "Liberation Serif" "Vazirmatn" ];
                sansSerif = [ "Ubuntu" "Vazirmatn" ];
                monospace = [ "Ubuntu Mono" ];
            };
        };
    };
}
