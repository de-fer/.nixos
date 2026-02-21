# modules/home/neovim.nix
{ config, pkgs, lib, ... }:

{
  # Config

  programs.neovim = {
    enable = true;

    defaultEditor = true;
    viAlias = true;  # vi  -> nvim
    vimAlias = true; # vim -> nvim

    package = pkgs.neovim-unwrapped;

    plugins = with pkgs.vimPlugins; [
     catppuccin-nvim

      # interface
      lualine-nvim #statusline
      bufferline-nvim
      nvim-web-devicons

      # navigation
      plenary-nvim
      telescope-nvim
      telescope-fzf-native-nvim

      # syntaxis
      nvim-treesitter
      nvim-treesitter.withAllGrammars

      # autocomplite and LSP
      nvim-lspconfig
      nvim-cmp
      cmp-nvim-lsp
      cmp-buffer
      cmp-path
      cmp-cmdline
      luasnip
      cmp_luasnip
      friendly-snippets

      # editor utils
      vim-commentary
      mini-nvim
    ];

    extraPackages = with pkgs; [
      # telescope
      ripgrep
      fd

      # lua
      lua-language-server
      stylua # lua code forrmater

      nixd #LSP for nix
    ];

  };

  xdg.configFile.nvim = {
      source = ./neovim; 
      recursive = true;
    };
}
