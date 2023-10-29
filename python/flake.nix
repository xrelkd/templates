{
  description = "Fika - Python template";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    let
      name = "fixa";
      version = "0.0.0";
    in
    (flake-utils.lib.eachDefaultSystem
      (system:
        let
          pkgs = import nixpkgs {
            inherit system;
            overlays = [
              self.overlays.default
            ];
          };
        in
        {
          formatter = pkgs.treefmt;

          devShells.default = pkgs.callPackage ./devshell { };

          packages = rec {
            default = fixa;
            fixa = pkgs.callPackage ./devshell/package.nix { };
            container = pkgs.callPackage ./devshell/container.nix {
              inherit name version fixa;
            };
          };

          checks = {
            format = pkgs.callPackage ./devshell/format.nix { };
          };
        })) // {
      overlays.default = final: prev: { };
    };
}
