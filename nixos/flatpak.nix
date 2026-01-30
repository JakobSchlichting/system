{ ... }:

{
    services.flatpak = {
        enable = true;
        packages = [
            "com.github.tchx84.Flatseal"
            "app.zen_browser.zen"
        ];
    };
}
