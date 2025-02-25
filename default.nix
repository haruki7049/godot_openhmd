{
  stdenv,
  lib,

  # Dependencies
  scons,
  pkg-config,
  systemd,
}:

stdenv.mkDerivation rec {
  pname = "godot-openhmd";
  version = "dev";
  src = lib.cleanSource ./.;

  nativeBuildInputs = [
    pkg-config
    scons
  ];

  buildInputs = [
    systemd
  ];
}
