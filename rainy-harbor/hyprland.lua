-- Kept from the Hex theme: gaps, translucent windows and blurred shell layers.
-- Changed: a 1px dark border and a small corner radius instead of Hex's neon
-- gradient and 42px rounding.

local activeBorderColor = "rgba(2b3f4dee)"
local inactiveBorderColor = "rgba(131c23aa)"

hl.config({
  general = {
    col = {
      active_border = activeBorderColor,
      inactive_border = inactiveBorderColor,
    },
    border_size = 1,
    gaps_out = 12,
    gaps_in = 8,
  },
  group = {
    col = {
      border_active = activeBorderColor,
      border_inactive = inactiveBorderColor,
    },
  },
  decoration = {
    rounding = 10,
    active_opacity = 0.85,
    inactive_opacity = 0.75,
    shadow = {
      enabled = true,
      range = 20,
      render_power = 3,
      color = "rgba(00000066)",
    },
  },
})

-- Blur behind the shell surfaces. The theme's shell.*.toml makes the bar, menu,
-- popups and notifications translucent, which only reads as glass when the
-- compositor blurs what sits behind them. decoration.blur covers windows, not
-- layers, so each surface needs its own rule.
hl.layer_rule({ match = { namespace = "omarchy-bar" }, blur = true, ignore_alpha = 0.1 })
hl.layer_rule({ match = { namespace = "omarchy-menu" }, blur = true, ignore_alpha = 0.1, no_anim = true })
hl.layer_rule({ match = { namespace = "omarchy-image-selector" }, blur = true, ignore_alpha = 0.1, no_anim = true })
hl.layer_rule({ match = { namespace = "omarchy-notifications" }, blur = true, ignore_alpha = 0.1 })
hl.layer_rule({ match = { namespace = "omarchy-osd" }, blur = true, ignore_alpha = 0.1 })
hl.layer_rule({ match = { namespace = "omarchy-clipboard" }, blur = true, ignore_alpha = 0.1 })
