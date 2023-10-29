{ lib
, poetry2nix
, python311
}:

poetry2nix.mkPoetryApplication
{
  projectDir = lib.cleanSource ./..;
  python = python311;
  overrides = poetry2nix.overrides.withDefaults (self: super: {
    # workaround https://github.com/nix-community/poetry2nix/issues/568
    blinker = super.blinker.overridePythonAttrs (old: {
      buildInputs = old.buildInputs or [ ] ++ [ python311.pkgs.flit-core ];
    });
    flask = super.flask.overridePythonAttrs (old: {
      buildInputs = old.buildInputs or [ ] ++ [ python311.pkgs.flit-core ];
    });
    werkzeug = super.werkzeug.overridePythonAttrs (old: {
      buildInputs = old.buildInputs or [ ] ++ [ python311.pkgs.flit-core ];
    });
  });
}
