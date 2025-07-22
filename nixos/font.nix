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
            nerd-fonts.fira-code
            nerd-fonts.jetbrains-mono
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
