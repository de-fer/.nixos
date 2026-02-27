{ ... }:

{
  programs.waybar.settings = {

    top = {
      layer = "top";
      output = [
        "eDP-1"
        "HDMI-A-2"
      ];

      position = "top";
      margin-top = 10;
      mode = "dock";
      width = 1000;

      modules-left = [
        "hyprland/workspaces"
      ];
      "hyprland/workspaces" = {
        format = "{icon}";
        on-click = "activate";
        format-icons = {
          "1" = "1";
          "2" = "2";
          "3" = "3";
          "4" = "4";
          "5" = "5";
        };
        sort-by-number = true;
        all-outputs = false;
        persistent-workspaces = {
          "1" = [];
          "2" = [];
          "3" = [];
          "4" = [];
          "5" = [];
        };
      };

      modules-center = [
        "clock"
      ];
      "clock" = {
        tooltip = false;
        format = "{:%H:%M}  ";
        format-alt = "{0:%H:%M}   {0:%d.%m.%y} 󰸗  {0:%a}";
      };

      modules-right = [ 
        "hyprland/language"
        "network"
        "wireplumber"
        "wireplumber#source"
        "battery"
      ];
      "hyprland/language" = {
        format = "{short}";
      };
      "network" = {
        format = "";
        format-wifi = " ";
        format-ethernet = "󰈀 ";
        format-disconnected = " "; 
        tooltip-format = "{ifname} ({gwaddr})  ";
        tooltip-format-wifi = "{essid} ({ipaddr}/{cidr}/{signalStrength}%)  ";
        tooltip-format-ethernet = "{ifname} ({ipaddr}/{cidr}) 󰈀 ";
        tooltip-format-disconnected = "Disconnected  ";
        max-length = 50;
        on-click = "nm-connection-editor";
      };
      "wireplumber" = {
        format = "{volume} {icon} ";
        format-muted = "";
        format-icons = [ "" "" "" ];
        on-click = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
        on-click-right = "pavucontrol";
        scroll-step = 10;
      };
      "wireplumber#source" = {
        "node-type" = "Audio/Source";
        format = "{volume}  ";
        format-muted = " ";
        on-click = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";
        on-click-right = "pavucontrol";
        scroll-step = 10;
      };
      "battery" = {
        format = "{capacity} {icon} ";
        format-icons = ["" "" "" "" ""];
      };
    };

  };
}
