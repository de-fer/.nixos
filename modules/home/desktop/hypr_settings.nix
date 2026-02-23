{ config, pkgs, lib, ... }:

{
  wayland.windowManager.hyprland = {
    # ========== HYRPLAND CONFIG ========
    settings = {
      # see https://wiki.hypr.land/Configuring/Monitors/
      monitor = [
        ",preferred,auto,auto"
        "HDMI-A-2,1920x1080@144,-1x0,1"
      ];

      # see https://wiki.hypr.land/Configuring/Environment-variables/
      env = [
      ];

      # https://wiki.hypr.land/Configuring/Variables
      general = {
        layout = "dwindle"; #dwindle # какой макет [dwindle(новое актив)/master(пассив)/scrolling/monocle]
        border_size = 2; #1       # размер рамки
        gaps_in = 5; #5           # разрыв между окнами
        gaps_out = 20; #20        # разрыв между окном и рамкой экрана
        float_gaps = 0; #0 
        no_focus_fallback = false; #flase # true - если окно последнее - не переключит на селдующий воркспейс
        resize_on_border = true; #false    # изменять размер окон перетаскивая за границу
      };

      decoration = {
        rounding = 24; #0 # радиус скругления
        rounding_power = 1.3; #2 # сила скругления
        # прозрачность #1.0 
        active_opacity = 0.8;
        inactive_opacity = 0.7;
        blur = {
          enabled = true; #true
          size = 3; #8
          passes = 1; #1 
          noise = 0.02; #0.02
          contrast = 0.89; #0.89
          brightness = 0.82; #0.82
          vibrancy = 0.17; #0.17
        };
        shadow = {};
      };
      # animations = {}; # по дефолту хорошо настроенно
      
      input = {
        kb_layout = "us,ru";
        kb_options = "grp:alt_shift_toggle";
        numlock_by_default = true;
        repeat_rate = 50; #25    # повторов в сек при удержании клавиши
        repeat_delay = 600; #600 # задержка перед повтором в мс 

        follow_mouse = 1;
        sensitivity = -0.8;
        rotation = 354; #0 # поворот мыши (0-359 int)


        touchpad = {
          natural_scroll = true;
          tap-to-click = true;
        };
      };

      misc = {
        disable_hyprland_logo = false; # если true - выкл дефолтные рандом обои хайпрленда
        disable_autoreload = true;
        render_unfocused_fps = 30; #15
      };

    };
  };
}
