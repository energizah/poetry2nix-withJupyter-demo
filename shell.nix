let
  pkgs = import (builtins.fetchTarball {
    # Descriptive name to make the store path easier to identify
    name = "20.03";
    url = "https://github.com/nixos/nixpkgs/archive/20.03.tar.gz";
    # Hash obtained using `nix-prefetch-url --unpack <url>`
    sha256 = "0182ys095dfx02vl2a20j1hz92dx3mfgz2a6fhn31bqlp1wa8hlq";
  }) { };

  poetryPackages = pkgs.mkPoetryPackages { projectDir = ./.; };

  jupyter = import (builtins.fetchGit {
    url = "https://github.com/tweag/jupyterWith";
    rev = "";
  }) { };

  iPython = jupyter.kernels.iPythonWith {
    name = "poetry";
    packages = p: poetryPackages;
  };

  jupyterlabEnvironment = jupyter.jupyterlabWith { kernels = [ iPython ]; };

in jupyterlabEnvironment.env
