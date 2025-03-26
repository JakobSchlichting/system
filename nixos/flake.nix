{
    description = "Jakob Schlichting NixOS configurations, delimited by hostname!";
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
        rust-overlay.url = "github:oxalica/rust-overlay";
        templ.url = "github:a-h/templ";
        nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";
    };

    outputs = { self, nixpkgs, nix-flatpak, ... }@inputs: {
        nixpkgs.overlays = [
            inputs.templ.overlays.default
        ];
        nixosConfigurations.socworkstation = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
	    specialArgs = { inherit inputs; };
            modules = [
                nix-flatpak.nixosModules.nix-flatpak
                ./bootloader.nix
                ./kernel.nix
                ./configuration.nix
                ./hyprland.nix
		        ./display_manager.nix
                ./dev_tools.nix
                ./shell.nix
                ./nvidia.nix
                ./opengl.nix
                ./bluetooth.nix
                ./font.nix
                ./time.nix
                ./network.nix
                ./network_anonymous.nix
                ./sound.nix
                ./rust.nix
                ./internationalisation.nix
                ./artificial_intelligence.nix
                ./flatpak.nix
                ./usb.nix
                ./garbage_collection.nix
                ./lsp.nix
                ./languages.nix
            ];
        };
    };
}
