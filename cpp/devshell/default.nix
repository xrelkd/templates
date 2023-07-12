{ pkgs
, stdenv
, ...
}:

stdenv.mkDerivation {
  name = "dev-shell";

  nativeBuildInputs = with pkgs; [
    tokei

    cmake
    cmake-format

    clang-tools_16

    hclfmt
    nixpkgs-fmt
    nodePackages.prettier
    shfmt
    sleek
    taplo
    treefmt

    shellcheck

    # Development time dependencies
    gtest

    # Build time and Run time dependencies
    spdlog
    abseil-cpp
    fmt
  ];

  shellHook = ''
    export NIX_PATH="nixpkgs=${pkgs.path}"
  '';
}
