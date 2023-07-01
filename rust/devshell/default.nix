{ rustToolchain
, cargoArgs
, unitTestArgs
, pkgs
, ...
}:

let
  cargo-ext = pkgs.callPackage ./cargo-ext.nix { inherit cargoArgs unitTestArgs; };
in
pkgs.mkShell {
  name = "dev-shell";

  nativeBuildInputs = with pkgs; [
    cargo-ext.cargo-build-all
    cargo-ext.cargo-clippy-all
    cargo-ext.cargo-doc-all
    cargo-ext.cargo-nextest-all
    cargo-ext.cargo-test-all
    cargo-ext.cargo-udeps-all
    cargo-ext.cargo-watch-all
    cargo-nextest
    cargo-udeps
    cargo-watch
    rustToolchain

    # sqlx-cli

    tokei

    # llvmPackages_15.clang
    # llvmPackages_15.libclang

    # pkg-config
    # openssl

    # protobuf

    jq

    hclfmt
    nixpkgs-fmt
    nodePackages.prettier
    shfmt
    sleek
    taplo
    treefmt
    # clang-tools contains clang-format
    clang-tools

    shellcheck
  ];

  # PROTOC = "${pkgs.protobuf}/bin/protoc";
  # PROTOC_INCLUDE = "${pkgs.protobuf}/include";

  # LIBCLANG_PATH = "${pkgs.llvmPackages_15.libclang.lib}/lib";

  shellHook = ''
    export NIX_PATH="nixpkgs=${pkgs.path}"
  '';
}
