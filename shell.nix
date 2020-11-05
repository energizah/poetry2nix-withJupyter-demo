let
  pkgs = import (builtins.fetchTarball {
    # Descriptive name to make the store path easier to identify
    name = "20.03";
    url = "https://github.com/nixos/nixpkgs/archive/20.03.tar.gz";
    # Hash obtained using `nix-prefetch-url --unpack <url>`
    sha256 = "0182ys095dfx02vl2a20j1hz92dx3mfgz2a6fhn31bqlp1wa8hlq";
  }) { };

  poetry2nix = pkgs.callPackage (pkgs.fetchFromGitHub {
    owner = "nix-community";
    repo = "poetry2nix";
    rev = "f4ab52a42cc646b8b81dd0d6345be9f48c944ac9";
    sha256 = "1c4vf2w1sm63n9jdjr1yd32r99xq164hijqcac8lr6x6b03p3j57";
  }) { };
  jupyter = import (builtins.fetchGit {
    url = "https://github.com/tweag/jupyterWith";
    rev = "";
  }) { };

  poetryWith = (poetry2nix.mkPoetryPackages { projectDir = ./.; });

  iPython = jupyter.kernels.iPythonWith {
    name = "poetry";
    packages = p: poetryWith.poetryPackages;
  };

  jupyterlabEnvironment = jupyter.jupyterlabWith { kernels = [ iPython ]; };

in jupyterlabEnvironment.env
