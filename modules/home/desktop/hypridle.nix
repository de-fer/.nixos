{ ... }:

{
  services.hypridle = {
    enable = true;
    settings.listener = [
      # {
      #   timeout = 150; # 2.5 min
      #   on-timeout = "brightnessctl -s set 10";
      #   on-resume = "brightnessctl -r";
      # }
      {
        timeout = 240; # 4 min
        on-timeout = "notify-send 'Система заснёт через минуту'";
      }
      {
        timeout = 300; # 5 min
        on-timeout = "hyprlock";
      }
      {
        timeout = 330; # 5.5 min
        on-timeout = "hyprctl dispatch dpms off";
        on-resume = "hyprctl dispatch dpms on && brightnessctl -r";
      }
      {
        timeout = 480; # 7 min
        on-timeout = "systemctl suspend";
      }
    ];
  };
}
