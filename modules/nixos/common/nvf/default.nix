{ config, pkgs, lib, ... }:

{
  programs.nvf = {
    enable = true;

    settings = {
      vim = {
        # === Aliases ===
        viAlias = true;
        vimAlias = true;

        # === basic ===
        globals.mapleader = " ";
        options = {
          number = true;
          relativenumber = false;
          mouse = "a";
          clipboard = "unnamedplus";
          # tabs
          tabstop = 2;
          shiftwidth = 2;
          expandtab = true;
          smartindent = true;
          autoindent = true;
          # search
          hlsearch = true;
          incsearch = true;
          ignorecase = true;
          smartcase = true;
        };
      # === plugins ====
      lsp = {
        enable = true;
        formatOnSave = true;
        inlayHints.enable = true;
      };
      autocomplete.blink-cmp.enable = true;
      binds.whichKey.enable = true;
      comments.comment-nvim.enable = true;
      utility.surround.enable = true;
      visuals.indent-blankline.enable = true;
      };
    };
  };

  imports = [
    ./lualine.nix
    ./treesitter.nix
    ./neo-tree.nix
  ];
}
