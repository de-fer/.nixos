{ inputs, ... }:

{
  imports = [ inputs.nixcord.homeModules.nixcord ];

  programs.nixcord = {
    enable = true;
    vesktop.enable = true;
    discord.enable = false;

    quickCss = ''
      .visual-refresh {
        --font: "Comic Relief";
        --font-display: "Comic Relief";
        --font-primary: "Comic Relief";
      }
    '';
  
    config = {
      useQuickCss = true;
      frameless = true;
      plugins = {
      };
    };
  };

}
