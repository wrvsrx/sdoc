{
  stdenvNoCC,
  cargo,
  rustc,
}:
stdenvNoCC.mkDerivation {
  name = "";
  src = ./.;
  nativeBuildInputs = [
    cargo
    rustc
  ];
  installPhase = ''
    mkdir -p $out
  '';
}
