{ pkgs, ... }:

{
  programs.obsidian = {
    enable = true;
    
    vaults = {
      "Obsidian" = {
        enable = true;
        target = "Obsidian";
      };
    };

    defaultSettings = {
      # app = {};
      # appearance = {};
      communityPlugins = [

        # Dataview
        (pkgs.fetchFromGitHub {
          owner = "blacksmithgu";
          repo = "obsidian-dataview";
          rev = "master";
          hash = "sha256-XAZ/mesqWRm10c1LyPbaCQNb2lA1Fy+GVeT5fWDcKns="; 
        })

        # Latex Suite
        (pkgs.fetchFromGitHub {
          owner = "artisticat1";
          repo = "obsidian-latex-suite";
          rev = "main";
          hash = "sha256-LpoUbO/eyyi8DObgTO/x9SxNo6t54lyBO9vK7JjyE/w=";
        })

        # Remotely Save
        (pkgs.fetchFromGitHub {
          owner = "fyears";
          repo = "remotely-save";
          rev = "master";
          hash = "sha256-YFu6Cy8KWIzRzq3EfOICOvhw25UdZQBwxqYiWa1cF6U=";
        })

        # Telegram Sync 
        (pkgs.fetchFromGitHub {
          owner = "soberhacker";
          repo = "obsidian-telegram-sync";
          rev = "main";
          hash = "sha256-Ctoq0/N4WFHF+rxXr2rBjqksg9RGOktYAWms/Xz4DoE=";
        })

        # Update modified date
        (pkgs.fetchFromGitHub {
          owner = "alangrainger";
          repo = "obsidian-frontmatter-modified-date";
          rev = "main";
          hash = "sha256-dggGA5jBCoo90R8tX4dk+klsJWNvQ+vhwIZXrebC7dU=";
        })
      ];
      corePlugins = [
        "file-explorer"
        "global-search"
        "graph"
        "outline"
        "page-preview"
        "slides"
        "templates"
        "webviewer"
        "word-count"
      ];
      # cssSnippets = [];
      # extraFiles = {};
      # hotkeys = {};
      # themes = [];
    };
  };
}
