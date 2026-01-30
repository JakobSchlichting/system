{
    description = "Jakob Schlichting NixOS configurations, delimited by hostname!";
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
        nixpkgs-unstable.url = "github:nixos/nixpkgs/nixpkgs-unstable";
        rust-overlay.url = "github:oxalica/rust-overlay";
        nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";
        zen-browser = {
            url = "github:0xc000022070/zen-browser-flake";
# IMPORTANT: we're using "libgbm" and is only available in unstable so ensure
# to have it up-to-date or simply don't specify the nixpkgs input  
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { self, nixpkgs, nixpkgs-unstable, nix-flatpak, ... }@inputs: {
        nixpkgs.overlays = [
            inputs.templ.overlays.default
        ];
        nixosConfigurations.socworkstation = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
	        specialArgs = { 
                inherit inputs;
                pkgs-unstable = import nixpkgs-unstable {
                    system = "x86_64-linux";
                    config.allowUnfree = true;
                };
            };
            modules = [
                nix-flatpak.nixosModules.nix-flatpak
                ({ config, pkgs, inputs, ... }: {
                    _module.args.pkgs-unstable = import inputs.nixpkgs-unstable {
                        system = "x86_64-linux";
                        config.allowUnfree = true;
                    };
                })
                ./configuration.soc_workstation.nix
        		./hardware_configuration.soc_workstation.nix
                ./bootloader.soc_workstation.nix
                ./kernel.nix
                ./hyprland.nix
                ./display_manager.nix
                ./dev_tools.nix
                ./shell.nix
                ./opengl.nix
                ./nvidia.nix
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
                ./user.nix
                ./legcord.nix
                ./vm.nix
                ./cursor.nix
                ./office.nix
            ];
        };
# INFO: home workstation
        nixosConfigurations.homeworkstation = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
	        specialArgs = { inherit inputs; };
            modules = [
                nix-flatpak.nixosModules.nix-flatpak
                ({ config, pkgs, inputs, ... }: {
                    _module.args.pkgs-unstable = import inputs.nixpkgs-unstable {
                        system = "x86_64-linux";
                        config.allowUnfree = true;
                    };
                })
                ./kernel.nix
                ./configuration.home_workstation.nix
		        ./hardware_configuration.home_workstation.nix
                ./hyprland.nix
		        ./display_manager.nix
                ./dev_tools.nix
                ./shell.nix
                # ./nvidia.nix
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
                # ./flatpak.nix
                # ./usb.nix
                ./garbage_collection.nix
                ./lsp.nix
                ./languages.nix
                ./user.nix
                ./legcord.nix
                ./steam.nix
                ./container.nix
                ./cursor.nix
                ./office.nix
                ./latex.nix
                ./vm.nix
            ];
        };
# INFO: systems with the hostname nixos are assumed to be general purpose virtual machines
        nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
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
