{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  pname = "Kilo Editor";
  version = "0.1.0";
  src = ./.;

  installPhase = ''
    mkdir -p $out/bin
    cp bin/kilo $out/bin/kilo
  '';
}