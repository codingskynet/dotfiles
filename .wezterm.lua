local config = {}

local wezterm = require 'wezterm'
local act = wezterm.action

config.keys = {
  { mods = 'OPT', key = 'LeftArrow', action = act.SendKey({ mods = 'ALT', key = 'b' }) },
  { mods = 'OPT', key = 'RightArrow', action = act.SendKey({ mods = 'ALT', key = 'f' }) },
  { mods = 'CMD', key = 'LeftArrow', action = act.SendKey({ mods = 'CTRL', key = 'a' }) },
  { mods = 'CMD', key = 'RightArrow', action = act.SendKey({ mods = 'CTRL', key = 'e' }) },
  { mods = 'NONE', key = 'Home', action = act.SendKey({ mods = 'CTRL', key = 'a' }) },
  { mods = 'NONE', key = 'End', action = act.SendKey({ mods = 'CTRL', key = 'e' }) },
  { mods = 'CMD', key = 'Backspace', action = act.SendKey({ mods = 'CTRL', key = 'u' }) },
  { mods = 'CMD', key = 'k', action = act.ClearScrollback 'ScrollbackAndViewport' },
}

config.color_scheme = 'AtomOneLight'
config.font = wezterm.font('JetBrains Mono', { weight = 'Medium' })
config.font_size = 15.5
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }

-- config.debug_key_events = true

return config
