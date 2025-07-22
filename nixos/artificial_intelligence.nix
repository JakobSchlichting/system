{ pkgs, config, lib, ... }:

{
    services.ollama = {
        enable = true;
        loadModels = [ "llama3.2:3b" "llama3.2-vision:11b" "phi4:14b" "deepseek-r1:7b" "dolphin3:8b" "smallthinker:3b" "nomic-embed-text" ];
        acceleration = lib.mkIf (config.hardware.nvidia != null) "cuda";
    };
}
