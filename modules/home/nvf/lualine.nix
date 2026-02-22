{ config, pkgs, lib, ... }:

{
  programs.nvf.settings.vim = {
    statusline.lualine = {
      enable = true;
      globalStatus = true;
    };
  };
}
