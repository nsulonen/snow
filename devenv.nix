{ pkgs, lib, config, inputs, ... }:

{
  languages.c.enable = true;

  packages = with pkgs; [
    raylib
    lldb
    pkg-config
  ];

  env = lib.optionalAttrs pkgs.stdenv.isLinux {
    LD_LIBRARY_PATH = "${lib.makeLibraryPath [
      pkgs.raylib
      pkgs.libGL
      pkgs.xorg.libX11
      pkgs.xorg.libXcursor
      pkgs.xorg.libXrandr
      pkgs.xorg.libXinerama
      pkgs.xorg.libXi
    ]}";
  };
}
