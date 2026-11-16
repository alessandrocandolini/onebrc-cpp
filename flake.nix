{
  description = "C++ development environment";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { nixpkgs, ... }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
      ];
    in
    {
      devShells = nixpkgs.lib.genAttrs systems (
        system:
        let
          pkgs = import nixpkgs { inherit system; };
        in
        {
          # Pin both Clang and LLVM libc++, including the runtime on macOS.
          default = (pkgs.mkShell.override { stdenv = pkgs.llvmPackages.libcxxStdenv; }) {
            packages = [
              pkgs.gnumake
            ];
          };
        }
      );
    };
}
