{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "leptosfmt";
  version = "0.1.30";

  src = fetchFromGitHub {
    owner = "bram209";
    repo = "leptosfmt";
    rev = "85b06b9a8bb0616b6a03ba43517245c79e1dd4cf";
    hash = "sha256-PiVPnni7W8SIhO6L9698RSMTD4VVTB+klLrqMzEtWWo=";
    fetchSubmodules = true;
  };

  useFetchCargoVendor = true;
  cargoHash = "sha256-u0PtqWcQdt3vjoarqyiLZa8g5I+GWXPuHW6a/EtbB7o=";

  meta = with lib; {
    description = "Formatter for the leptos view! macro";
    mainProgram = "leptosfmt";
    homepage = "https://github.com/bram209/leptosfmt";
    changelog = "https://github.com/bram209/leptosfmt/blob/${src.rev}/CHANGELOG.md";
    license = with licenses; [
      asl20
      mit
    ];
    maintainers = with maintainers; [ figsoda ];
  };
}
