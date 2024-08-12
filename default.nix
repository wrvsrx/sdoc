{
  rustPlatform,
  tree-sitter,
  nodejs,
  stdenvNoCC,
}:
rustPlatform.buildRustPackage {
  pname = "sdoc";
  version = "dev";
  src = ./.;
  nativeBuildInputs = [
    nodejs
    tree-sitter
  ];
  postPatch = ''
    env --chdir=crates/tree-sitter-sdoc tree-sitter generate
  '';
  cargoLock = {
    lockFile = ./Cargo.lock;
  };
}
