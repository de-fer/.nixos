{ config, pkgs, lib, ... }:

{
  programs.nvf.settings.vim = {
    treesitter = {
      enable = true;
      fold = true;
      indent.enable = false;
    };
  };
}
