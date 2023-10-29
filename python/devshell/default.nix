{ pkgs
, ...
}:

pkgs.mkShell {
  name = "dev-shell";

  nativeBuildInputs = with pkgs; [
    poetry
    ruff
    mypy

    tokei

    jq

    black
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

  shellHook = ''
    export NIX_PATH="nixpkgs=${pkgs.path}"
  '';
}
