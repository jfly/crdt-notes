{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      inherit (nixpkgs) lib;
      eachSupportedSystem = lib.genAttrs lib.systems.flakeExposed;
    in
    {
      devShells = eachSupportedSystem (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = pkgs.mkShell {
            packages = [
              pkgs.nodejs
              pkgs.process-compose
              pkgs.caddy
              pkgs.git
              pkgs.prometheus
              pkgs.grafana
              pkgs.grafana-loki
              pkgs.prometheus-node-exporter
            ];
          };
        }
      );
    };
}
