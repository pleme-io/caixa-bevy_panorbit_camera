# nix/modules/home-manager.nix — auto-generated from bevy_panorbit_camera.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_panorbit_camera; in {
  options.programs.bevy_panorbit_camera = {
    enable = lib.mkEnableOption "bevy_panorbit_camera";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_panorbit_camera or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
