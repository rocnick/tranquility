local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.initial_cols = 240
config.initial_rows = 75

config.font_size = 9
config.color_scheme = 'Batman'
config.window_background_opacity = 1.0

-- Background Images
config.background = {
  {
    source = { File = '/home/rocnick/Documents/wallpapers/sudo.png' },
    opacity = 0.95,
    hsb = {
      brightness = 0.75,
      saturation = 0.85
    }
  }
}

-- Key Mappings
config.keys = config.keys or {}

table.insert(config.keys, {
  key = 'd',
  mods = 'CMD',
  action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }
})

table.insert(config.keys, {
  key = 'd',
  mods = 'CMD|SHIFT',
  action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }
})

table.insert(config.keys, {
  key = 'h',
  mods = 'OPT',
  action = wezterm.action.ActivatePaneDirection('Left')
})

table.insert(config.keys, {
  key = 'l',
  mods = 'OPT',
  action = wezterm.action.ActivatePaneDirection('Right')
})

table.insert(config.keys, {
  key = 'k',
  mods = 'OPT',
  action = wezterm.action.ActivatePaneDirection('Up')
})

table.insert(config.keys, {
  key = 'j',
  mods = 'OPT',
  action = wezterm.action.ActivatePaneDirection('Down')
})

return config
