{
  pkgs,
  config,
  ...
}:

with config.lib.stylix.colors.withHashtag;

pkgs.writeShellApplication {
  name = "walogram";

  runtimeInputs = with pkgs; [
    file
    imagemagick
    zip
  ];

  bashOptions = [ "pipefail" ];

  text =
    let
      theme = import ./palette.nix {
        inherit
          config
          ;
      };
    in
    # sh
    ''
      tempdir="$(mktemp -d)"
      cachedir="${config.xdg.cacheHome}"
      themename="stylix.tdesktop-theme"
      walname="background.jpg"

      rm "$cachedir/$themename" -f
      mkdir -p "$cachedir"
      echo "${theme}" > "$tempdir/colors.tdesktop-theme"
      gentheme() {
        if command -v zip >/dev/null 2>&1; then
          magick -size 256x256 "gradient:${base01}-${base00}" "$tempdir/$walname"
          zip -jq -FS "$cachedir/$themename" "$tempdir"/*
        else
          msg "'zip' not found. theme generated without background image"
          cp -f "$tempdir/colors.tdesktop-theme" "$cachedir/$themename"
        fi
      }

      gentheme
    '';
}
