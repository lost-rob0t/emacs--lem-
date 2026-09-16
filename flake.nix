{
  description = "Pinned Lem environment and Emacs-to-Lem migration control plane";

  inputs = {
    lem.url = "github:lem-project/lem/75b48185d5e90283d6ab50cccff15322b6fb8987";
    nixpkgs.follows = "lem/nixpkgs";
  };

  outputs =
    { self, nixpkgs, lem, ... }:
    let
      systems = [
        "aarch64-darwin"
        "aarch64-linux"
        "x86_64-darwin"
        "x86_64-linux"
      ];
      forAllSystems = nixpkgs.lib.genAttrs systems;
    in
    {
      overlays.default = lem.overlays.default;

      packages = forAllSystems (system: {
        lem-ncurses = lem.packages.${system}.lem-ncurses;
        default = lem.packages.${system}.lem-ncurses;
      });

      apps = forAllSystems (system: {
        lem-ncurses = lem.apps.${system}.lem-ncurses;
        default = lem.apps.${system}.lem-ncurses;
      });

      homeModules.default = import ./nix/home-manager.nix { inherit lem; };

      formatter = forAllSystems (
        system: nixpkgs.legacyPackages.${system}.nixfmt-rfc-style
      );
    };
}

