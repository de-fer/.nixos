{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    # telegram-desktop
    ayugram-desktop
  ];

  home.activation = lib.mkIf config.stylix.enable {
    telegramTheme = lib.hm.dag.entryAfter [ "" ] (
      "run "
      + lib.getExe (
        import ./walogram.nix {
          inherit
            pkgs
            config
            ;
        }
      )
    );
  };
}
