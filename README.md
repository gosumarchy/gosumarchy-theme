# Rainy themes for Omarchy

Three dark Omarchy themes built on rainy-city photos. Each one keeps the Hex theme's
translucent, blurred top bar and shell surfaces and its window transparency (0.85
focused, 0.75 unfocused), and replaces Hex's neon border with a 1px dark border and
10px corners.

| Theme          | Wallpapers                                  | Palette                     |
| -------------- | ------------------------------------------- | --------------------------- |
| `rainy-harbor` | Boston harbor at night, city lightning      | Navy, steel-blue accent     |
| `rainy-window` | Rain on windows with blurred city lights    | Moss green, amber accent    |
| `rainy-storm`  | Black-and-white storm clouds over skylines  | Graphite, dusty-rose accent |

## Install

Link each theme into Omarchy's user theme directory, then pick it in the theme menu
or with `omarchy-theme-set`:

```sh
for t in rainy-*; do ln -sfn "$PWD/$t" ~/.config/omarchy/themes/$t; done
omarchy-theme-set rainy-harbor
```

The themes are symlinked, not cloned, because `omarchy-theme-set` drops `hyprland.lua`
from any theme directory that contains its own `.git`. These themes rely on that file
for opacity, borders and the layer blur rules.

Layer blur also needs `decoration.blur.enabled = true`, which Omarchy ships off. Turn
it on in `~/.config/hypr/looknfeel.lua`.

## Files

- `colors.toml`: the palette. `hyprland_active_border` and `hyprland_inactive_border`
  give the shell's popup, notification and lock borders the same color as the window
  border.
- `hyprland.lua`: borders, corners, gaps, opacity, shadow and blur on shell layers.
  It repeats the border colors from `colors.toml`, because a theme that ships its own
  `hyprland.lua` replaces the generated one that would read them.
- `shell.*.toml`: background alpha for the bar, menu, popups and notifications.
- `backgrounds/`: 3840x2160 crops. The first file is the default; Omarchy cycles through
  the rest.

## Photo credits

All photos are from Unsplash under the [Unsplash License](https://unsplash.com/license).

- `rainy-harbor/backgrounds/0-boston-harbor-rain.jpg`: [Vlad D](https://unsplash.com/photos/BXRr9skWysI)
- `rainy-harbor/backgrounds/1-city-lightning.jpg`: [Yarenci Hdz](https://unsplash.com/photos/Ufkv_10Jsu0)
- `rainy-window/backgrounds/0-tokyo-window-rain.jpg`: [Red Shuheart](https://unsplash.com/photos/gLMShXh1N4Q)
- `rainy-window/backgrounds/1-traffic-light-rain.jpg`: [Andréas BRUN](https://unsplash.com/photos/_uDfd0eeOik)
- `rainy-window/backgrounds/2-amber-bokeh-rain.jpg`: [freestocks](https://unsplash.com/photos/Imvn4PWHPcQ)
- `rainy-window/backgrounds/3-neon-window-rain.jpg`: [lesha tuman](https://unsplash.com/photos/H8R6aIW_OdE)
- `rainy-storm/backgrounds/0-storm-over-skyline.jpg`: [David Kristianto](https://unsplash.com/photos/B91jU4lBWes)
- `rainy-storm/backgrounds/1-storm-break.jpg`: [Rui YAO](https://unsplash.com/photos/uLv-2ZZM4W8)
- `rainy-storm/backgrounds/2-storm-rooftops.jpg`: [Francesco Ungaro](https://unsplash.com/photos/eis5yseYYSw)
