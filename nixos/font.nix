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
            nerdfonts.fira-code
            nerdfonts.jetbrains-mono
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
