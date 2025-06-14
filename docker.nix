{pkgs ? import <nixpkgs> {}}:
let
  py_env = pkgs.python313.withPackages (ps: with ps; [sqlparse]);
in
  pkgs.dockerTools.buildImage {
    name = "sqlparser";
    copyToRoot = pkgs.buildEnv {
      name = "image-root";
      paths = with pkgs; [
        coreutils
        bashInteractive
        py_env
      ];
      pathsToLink = ["/bin"];
    };
    config = {
      Cmd = [
        "sqlformat"
      ];
    };
  }
