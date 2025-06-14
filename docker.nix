{pkgs ? import <nixpkgs> {}}:
let
  py_env = pkgs.python313.withPackages (ps: with ps; [sqlparse]);
in
  pkgs.dockerTools.buildImage {
    name = "sqlparser";
    tag = "latest";
    copyToRoot = pkgs.buildEnv {
      name = "image-root";
      paths = with pkgs; [
        py_env
      ];
      pathsToLink = ["/bin"];
    };
    config = {
      Entrypoint = [
        "sqlformat"
      ];
    };
  }
