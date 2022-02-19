let
  nixpkgs = import <nixpkgs> { };
in

  with nixpkgs;

  mkShell {
    buildInputs = [
      jdk
      gradle
    ];

    APPEND_LIBRARY_PATH = lib.makeLibraryPath [
    ];

    shellHook = ''
      export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$APPEND_LIBRARY_PATH"
    '';
  }