# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
    nixpkgs.config.allowUnfree = true;
  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/nvme0n1";
  boot.loader.grub.useOSProber = true;

  boot.initrd.luks.devices."luks-2fe6be73-9a06-4149-84de-dc74e274f360".device = "/dev/disk/by-uuid/2fe6be73-9a06-4149-84de-dc74e274f360";
  # Setup keyfile
  boot.initrd.secrets = {
    "/boot/crypto_keyfile.bin" = null;
  };

  boot.loader.grub.enableCryptodisk = true;

  boot.initrd.luks.devices."luks-bbff4321-38bb-49f3-8da0-bbf3434f67f0".keyFile = "/boot/crypto_keyfile.bin";
  boot.initrd.luks.devices."luks-2fe6be73-9a06-4149-84de-dc74e274f360".keyFile = "/boot/crypto_keyfile.bin";
  networking.hostName = "homeworkstation"; # Define your hostname.
  services.xserver.xkb = {
    layout = "de";
    variant = "nodeadkeys";
  };
  console.keyMap = "de-latin1-nodeadkeys";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  services.openssh.enable = true;
  system.stateVersion = "25.05"; # Did you read the comment?
}
