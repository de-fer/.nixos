{ ... }:

{
  services.hyprpaper = {
    enable = true;
    settings = {
      splash = true;
      wallpaper = [

        {
          monitor = "eDP-1";
          path = "~/.wallpapers/sakura.png";
        }

        {
          monitor = "HDMI-A-2";
          path = "~/.wallpapers/sakura.png";
        }
      
      ];
    };
  };
}
