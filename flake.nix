{
  description = "A collection of Nix flake templates";

  outputs = { self }: {
    templates = {
      default = self.templates.rust;

      common = {
        path = ./common;
        description = "A very basic flake";
      };

      rust = {
        path = ./rust;
        description = "Rust template";
      };

      cpp = {
        path = ./cpp;
        description = "C++ template";
      };

      go = {
        path = ./go;
        description = "Go template";
      };

    };
  };
}
