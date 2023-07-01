{
  description = "A collection of Nix flake templates";

  outputs = { self }: {
    templates = {
      common = {
        path = ./common;
        description = "A very basic flake";
      };
    };
  };
}
