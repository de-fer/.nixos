{ pkgs, ... }:

{
  stylix = {
    enable = true;

    polarity = "dark";
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyo-night-storm.yaml";
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/ayu-mirage.yaml";
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/3024.yaml";
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark.yaml";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/monokai.yaml";
    
    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.comic-shanns-mono;
        name = "ComicShannsMono Nerd Font";
      };

      serif = {
        package = pkgs.comic-relief;
        name = "Comic relief";
      };

      sansSerif = {
        package = pkgs.comic-relief;
        name = "Comic relief";
      };
    };
  };
}

