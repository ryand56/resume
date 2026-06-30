{
  description = "Resume + Nix";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixos-unstable/nixexprs.tar.xz";
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
          src = pkgs.lib.cleanSourceWith {
            src = self;
            filter = path: type:
              let
                base = baseNameOf path;
              in
                base == "resume.md" ||
                base == "meta.yml" ||
                base == "layout.tex";
          };

          nativeBuildInputs = with pkgs; [
            pandoc
            (texliveSmall.withPackages (ps: with ps; [
              geometry
              titlesec
              hyperref
              enumitem
              parskip
              sectsty
            ]))
          ];
        }
        ''
          set -eu
          pandoc "$src/resume.md" \
            -o "$out" \
            --metadata-file="$src/meta.yml" \
            --pdf-engine=xelatex \
            --template="$src/layout.tex"
        '';

      default = self.packages.resume;
    });
  };
}
