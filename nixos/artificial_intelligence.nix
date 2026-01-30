{ pkgs, pkgs-unstable, config, lib, ... }:

{
    environment.systemPackages = [
        (pkgs-unstable.ollama.override { 
            acceleration = "cuda";
        })
    ];
}
