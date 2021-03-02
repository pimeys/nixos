{ config, lib, pkgs, inputs, ... }:

{
  nixpkgs.overlays = [
    (final: prev: with prev; {
      neovim-nightly = inputs.neovim-nightly.defaultPackage.${system};
    })
  ];

  virtualisation.docker.enable = true;

  environment.systemPackages = with pkgs; [
     neovim-nightly
     emacs
     git
     perl
     rustup
     clang
     binutils
     zlib
     openssl
     automake
     gnumake
     rust-analyzer
     ripgrep
     fd
     openjdk
     android-studio
     jq
     nodejs-slim
     starship
     docker-compose
     python3
  ];
}
