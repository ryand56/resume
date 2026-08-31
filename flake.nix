{
  description = "Resume + Nix";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixos-unstable/nixexprs.tar.zst";
  };

  outputs = { self, nixpkgs }: let
    forAllSystems = f:
      let
        lib = nixpkgs.lib;

        genAttrs = lib.genAttrs;
        intersectLists = lib.intersectLists;

        platforms = lib.platforms;
      in
      genAttrs (
        intersectLists platforms.linux (
          platforms.x86_64 ++ platforms.aarch64
        )
      ) (system: f nixpkgs.legacyPackages.${system});
  in {
    packages = forAllSystems (pkgs: {
      resume =
        pkgs.runCommand "resume.pdf" {
          src = ./resume.typ;
          nativeBuildInputs = [ pkgs.typst ];
          env.TYPST_FONT_PATHS = "${pkgs.liberation_ttf}/share/fonts";
        }
        ''
          set -eu
          typst compile --ignore-system-fonts -f pdf $src $out
        '';

      default = self.packages.resume;
    });
  };
}
