# system/locale.nix

{ config, pkgs, lib, ... }:

{
 i18n.defaultLocale = "en_US.UTF-8";

 console = {
   earlySetup = true;
   font = "ter-v32n";

   packages = with pkgs; [
     terminus_font
   ];
 };
}
