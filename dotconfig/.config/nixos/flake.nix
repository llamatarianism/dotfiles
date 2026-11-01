{
  inputs = {
    nixpkgs.url =  "https://channels.nixos.org/nixos-26.05/nixexprs.tar.zst";
    umbriel.url =  "github:noctalia-dev/umbriel";
    noctalia.url = "github:noctalia-dev/noctalia";
    limusic.url = "github:SimoHypers/limusic";
  };

  outputs = { self, nixpkgs, ...  }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [ ./configuration.nix ];
    };
  };
}
