let
  pkgs = import <nixpkgs> {};
  stdenv = pkgs.stdenv;
in
stdenv.mkDerivation {
  name = "love-env";
  buildInputs = with pkgs; [ 
    love 
    lua52Packages.lua
  ];
}
