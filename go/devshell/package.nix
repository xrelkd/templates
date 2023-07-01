{ name
, version
, lib
, buildGoModule
, installShellFiles
}:

buildGoModule rec {
  pname = name;
  inherit version;

  src = lib.cleanSource ./..;

  vendorHash = "sha256-7PT49Iv4WURK2E282BE89pYWcAROY60WH9vtKcAWOAA=";

  subPackages = [ "cmd/fixa" ];

  ldflags = [
    "-s"
    "-w"
    "-X github.com/xrelkd/fixa/pkg/version.AppName=${pname}"
    "-X github.com/xrelkd/fixa/pkg/version.Version=${version}"
  ];

  nativeBuildInputs = [ installShellFiles ];

  postInstall = ''
    installShellCompletion --cmd fixa \
      --bash <($out/bin/fixa completion bash) \
      --fish <($out/bin/fixa completion fish) \
      --zsh  <($out/bin/fixa completion zsh)
  '';
}
