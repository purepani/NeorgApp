{
  description = "Tracking the motion of a head with magnetic sensors";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        customOverrides = self: super: {
          # Overrides go here
        };


        packageName = "MagneticHeadMotionTracking";
      in {
#        packages.${packageName} = app;

#        defaultPackage = self.packages.${system}.${packageName};

        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [ 
            flutter
          ];
#          inputsFrom = builtins.attrValues self.packages.${system};
        };
      });
}

