{ config, lib, ... }:

{
    services.xserver.videoDrivers = ["nvidia"];
    hardware.nvidia-container-toolkit.enable = true;

    hardware.nvidia = {
        modesetting.enable = true;
        #TODO: eventually try to fix power management instead of disabeling it
        powerManagement.enable = false;
        powerManagement.finegrained = false;
        dynamicBoost.enable = lib.mkForce false;
        nvidiaSettings = true;
        package = config.boot.kernelPackages.nvidiaPackages.production;
        prime = {
            offload = {
                enable = true;
                enableOffloadCmd = true;
            };
            nvidiaBusId = "PCI:3:0:0";
            intelBusId = "PCI:0:2:0";
        };
    };
    specialisation = {
        nvidia-sync.configuration = {
            system.nixos.tags = [ "nvidia-sync" ];
            hardware.nvidia = {
                powerManagement.finegrained = lib.mkForce false;
                prime.offload.enable = lib.mkForce false;
                prime.offload.enableOffloadCmd = lib.mkForce false;
                prime.sync.enable = lib.mkForce true;
            };
        };
    };
}
