{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        python311Packages.python-lsp-server
        nodePackages_latest.nodemon
        nodePackages_latest.typescript
        nodePackages_latest.typescript-language-server
        nodePackages_latest.vscode-langservers-extracted
        nodePackages_latest.yaml-language-server
        nodePackages_latest.dockerfile-language-server-nodejs
        nodePackages_latest.bash-language-server
        sumneko-lua-language-server
        marksman
        markdown-oxide
        gopls
        buf
        cmake-language-server
        docker-compose-language-service
        # vscode-extensions.vadimcn.vscode-lldb
        terraform-ls
        ansible-language-server
        hyprls
        htmx-lsp
    ];
}
