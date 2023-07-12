{ name
, version
, lib
, stdenv
, cmake
, spdlog
, abseil-cpp
}:

stdenv.mkDerivation {
  pname = name;
  inherit version;

  doCheck = false;

  src = lib.cleanSource ./..;

  nativeBuildInputs = [ cmake ];

  buildInputs = [
    spdlog
    abseil-cpp
  ];

  cmakeFlags = [
    "-DENABLE_TESTING=OFF"
    "-DENABLE_INSTALL=ON"
  ];

  meta = with lib; {
    homepage = "https://github.com/xrelkd/templates";
    description = ''
      A template for Nix based C++ project setup.";
    '';
    licencse = licenses.mit;
    platforms = with platforms; linux ++ darwin;
    maintainers = [ maintainers.xrelkd ];
  };
}
