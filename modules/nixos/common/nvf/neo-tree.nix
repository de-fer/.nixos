{ config, pkgs, lib, ... }:

{
  programs.nvf.settings.vim = {
    filetree.neo-tree = {
      enable = true;
      setupOpts = {
        auto_open = true;
        close_if_last_windoddw = true;
        git_status_async = true;
        log_level = "warn";

        windows = {
          position = "left";
          width = 20;
          maxwidth = 30;
        };
      };
    };
  };
}
