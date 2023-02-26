{
  description = "Dev env for developing this keyboard (mostly just kicad tbh)";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
    in
    {
      nixpkgs = nixpkgs.legacyPackages.${system};
      devShells.${system}.default = self.nixpkgs.mkShell {
        buildInputs = [
          self.nixpkgs.kicad-small
        ];
      };
    };
}
