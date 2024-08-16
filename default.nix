{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  pname = "Kilo Editor";
  version = "0.1.0";
  src = ./.;

  buildPhase = ''
    make clean
    make install
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp build/kilo $out/bin/kilo
  '';
}