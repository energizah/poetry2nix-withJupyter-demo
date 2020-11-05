let

  poetry2nix = import (builtins.fetchGit {
    url = "https://github.com/nix-community/poetry2nix";
    rev = "70c6964368406a3494d8b08c3cc37b7bc822b268";
  }) { };

  jupyter = import (builtins.fetchGit {
    url = "https://github.com/tweag/jupyterWith";
    rev = "a377bb551e81ed5b6ccdd7b8fc98adec3a688ee4";

  }) { };

  poetryEnv = (poetry2nix.mkPoetryEnv { poetrylock = ./poetry.lock; });

  iPython = jupyter.kernels.iPythonWith {
    name = "poetry";
    python3 = poetryEnv;
    packages = ps:
      let
        pyproject = builtins.fromTOML (builtins.readFile ./pyproject.toml);
        depAttrs = builtins.attrNames pyproject.tool.poetry.dependencies;
        getDep = attrName: builtins.getAttr attrName ps;
      in builtins.map getDep depAttrs;
  };

  jupyterlabEnvironment = jupyter.jupyterlabWith { kernels = [ iPython ]; };

in jupyterlabEnvironment.env
