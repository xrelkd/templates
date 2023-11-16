{ pkgs
, ...
}:

let
  nodejs = pkgs.nodejs_20;
  yarn = pkgs.yarn.override { inherit nodejs; };
in
pkgs.mkShell {
  name = "dev-shell";

  nativeBuildInputs = with pkgs; [
    tokei

    nodejs
    yarn

    hclfmt
    nixpkgs-fmt
    nodePackages.prettier
    shfmt
    taplo
    treefmt

    shellcheck
  ];

  shellHook = ''
    export NIX_PATH="nixpkgs=${pkgs.path}"
  '';
}
