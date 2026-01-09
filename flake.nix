{
  description = "PacoQpf - Integration layer between paco-lean and QpfTypes";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };

        nativeBuildInputs = with pkgs; [
          elan
        ];

      in
      {
        devShells.default = pkgs.mkShell {
          inherit nativeBuildInputs;

          shellHook = ''
            echo "PacoQpf development environment"
            echo "Lean: $(elan show 2>/dev/null | head -1 || echo 'run: elan default leanprover/lean4:v4.27.0-rc1')"
          '';
        };
      }
    );
}
