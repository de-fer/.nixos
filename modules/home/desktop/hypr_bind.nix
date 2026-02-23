{ config, pkgs, lib, ... }:

{
  wayland.windowManager.hyprland.settings = {
    # Используемые программы
    "$term"        = "kitty";
    "$fileManager" = "nautilus";
    "$menu"    = "hyprlauncher";
    "$cliphist" = "cliphist list | wofi --dmenu | cliphist decpde | wl-copy";

    "$mod" = "SUPER";
    bind = [
      # ===basic===
      "$mod, Return,    exec, $term" # терминал
      "$mod, Backspace, killactive," # закрыть окно
      "$mod, Space,     exec, $menu" # запускалка
      "$mod, E, exec, $fileManager"  # проводник
      "$mod, Y, exec, $cliphist"     # история копирования
      "$mod, V, togglefloating,"     # переключить плавающее окно
      "$mod, C, togglesplit,"        # переключить режим разделения (верт/гор)
      # "$mod, L, ,"
      "$mod, M, exit,"
      # ===navigation=== (like VIM)
      "$mod, H, movefocus, l"
      "$mod, L, movefocus, r"
      "$mod, K, movefocus, u"
      "$mod, J, movefocus, d"
      # ===workspaces===
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      # ===move window to workspace===
      "$mod SHIFT, 1, movetoworkspace, 1"
      "$mod SHIFT, 2, movetoworkspace, 2"
      "$mod SHIFT, 3, movetoworkspace, 3"
      "$mod SHIFT, 4, movetoworkspace, 4"
      "$mod SHIFT, 5, movetoworkspace, 5"
      # ===special workspaces===
      # "$mod, S, togglespecialworkspace, name"
      # "$mod SHIFT, S, movetoworkspace, special:name"
    ];
    bindm = [
      # ===move/resize mouse dragging===
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];
  };
}
