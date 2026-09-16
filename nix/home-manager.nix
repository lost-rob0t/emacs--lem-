{ lem }:
{
  config,
  lib,
  pkgs,
  ...
}:
let
  cfg = config.programs.star-lem;
  system = pkgs.stdenv.hostPlatform.system;
in
{
  options.programs.star-lem = {
    enable = lib.mkEnableOption "the pinned StarIntel Lem environment";

    package = lib.mkOption {
      type = lib.types.package;
      default = lem.packages.${system}.lem-ncurses;
      defaultText = lib.literalExpression "lem.packages.${pkgs.stdenv.hostPlatform.system}.lem-ncurses";
      description = "Lem package installed by Home Manager.";
    };

    configDirectory = lib.mkOption {
      type = lib.types.path;
      default = ../lem;
      description = "Repository-owned Lem configuration tree.";
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = [ cfg.package ];

    home.sessionVariables.LEM_HOME = "${config.xdg.configHome}/lem";

    xdg.configFile."lem" = {
      source = cfg.configDirectory;
      recursive = true;
    };
  };
}
