{ ... }:

{
    services.flatpak = {
        enable = true;
        packages = [
            "com.github.tchx84.Flatseal"
            "md.obsidian.Obsidian"
            "app.zen_browser.zen"
        ];
    };
}
