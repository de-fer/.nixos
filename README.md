# nixos

## Структура проекта
```
.nixos
- flake.nix
- flake.lock
- hosts/                                # устройства
    -  laptop-pavilion/
        - default.nix                   # настройка nixos
        - home.nix                      # настройка home-manager
        - hardware-configuration.nix
- modules/
    - nixos/                            # модули для nixos
        - default.nix                   # подключает все модули nixos
        - common/                       # базовые модули (boot, networking ...)
        - desktop/                      # настройки рабочего окружения
    - home/                             # модули для home-manager
        - default.nix                   # подключает все модули home-manager
        - common/
        - desktop/
```
