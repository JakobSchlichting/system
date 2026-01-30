{ pkgs, ... }:
{
# Enable common container config files in /etc/containers
    virtualisation.containers.enable = true;
    virtualisation = {
        podman = {
            enable = true;
# Create a `docker` alias for podman, to use it as a drop-in replacement
            dockerCompat = true;
# Required for containers under podman-compose to be able to talk to each other.
            defaultNetwork.settings.dns_enabled = true;
        };
        oci-containers = {
            backend = "podman";
            containers = {
                postgres = {
                    image = "docker.io/postgres:17.5";
                    volumes = [
                      "pg_data:/var/lib/postgresql/data"
                    ];
                    environment = {
                        POSTGRES_USER = "admin";
                        POSTGRES_PASSWORD = "admin";
                    };
                    autoStart = true;
                    ports = [ "0.0.0.0:5432:5432" ];
                };
                pgadmin = {
                    image = "docker.io/dpage/pgadmin4:9.4.0";
                    volumes = [
                      "pg_admin_data:/var/lib/pgadmin"
                    ];
                    environment = {
                        PGADMIN_DEFAULT_EMAIL = "contact@schlichting.dev";
                        PGADMIN_DEFAULT_PASSWORD = "admin";
                    };
                    autoStart = true;
                    ports = [
                      "127.0.0.1:9876:80"
                    ];
                };
# TODO: move this to cluster
                semaphore = {
                    image = "semaphoreui/semaphore:v2.15.0";
                    volumes = [
                        "semaphore_data:/var/lib/semaphore"
                        "semaphore_config:/etc/semaphore"
                    ];
                    environment = {
# TODO: use the postgres db at some point
                        SEMAPHORE_DB_DIALECT = "bolt";
                        SEMAPHORE_ADMIN = "admin";
                        SEMAPHORE_ADMIN_PASSWORD = "changeme";
                        SEMAPHORE_ADMIN_NAME = "Admin";
                        SEMAPHORE_ADMIN_EMAIL = "contact@schlichting.dev";
                    };
                    ports = [
                      "127.0.0.1:9001:3000"
                    ];
                };
            };
        };
    };
# Useful other development tools
    environment.systemPackages = with pkgs; [
        dive # look into docker image layers
        podman-tui # status of containers in the terminal
        kubectl
# docker-compose # start group of containers for dev
# podman-compose # start group of containers for dev
    ];
    networking.firewall = {
        enable = true;
        allowedTCPPorts = [ 5432 ];
    };
}
