{
  system ? builtins.currentSystem or "x86_64-linux",
}:
let
  sources = import ./.tack { };

  pkgs = import sources.nixpkgs {
    inherit system;
    overlays = [
      (import sources.press)
    ];
  };

  inherit (pkgs) lib;

  fs = lib.fileset;

  fileset = fs.unions [ ./resume.typ ];

  typstResume = pkgs.buildTypstDocument {
    pname = "ryand-resume";
    version = "2.0.0";

    src = fs.toSource {
      root = ./.;
      inherit fileset;
    };

    file = "resume.typ";
    fonts = [ pkgs.liberation_ttf ];
  };
in
pkgs.runCommand "resume.pdf" { } "install -Dm644 ${typstResume} $out"
