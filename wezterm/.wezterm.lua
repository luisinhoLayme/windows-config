local wezterm = require 'wezterm'
local act = wezterm.action

return {
  default_prog = { 'C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe' },
  -- default_prog = { "pwsh.exe" },
  -- default_prog = {'C:/Program Files/Git/bin/bash.exe'},

  -- NOTE: tab bar
  hide_tab_bar_if_only_one_tab = true,
  enable_tab_bar = true,
  show_tab_index_in_tab_bar = false,
  tab_bar_at_bottom = true,
  use_fancy_tab_bar = true,
  -- enabe_scroll_bar = false,

  --NOTE: General

	use_ime = true,
	use_dead_keys = false,
	warn_about_missing_glyphs = false,
	enable_kitty_graphics = true,
	animation_fps = 1,
	cursor_blink_ease_in = "Constant",
	cursor_blink_ease_out = "Constant",
	cursor_blink_rate = 0,

	enable_csi_u_key_encoding = true,
	enable_wayland = false,
	adjust_window_size_when_changing_font_size = false,

  window_frame = {active_titlebar_bg = "#181818", font_size = 11},

  --NOTE: bg img
  window_background_image = "D:/Download/img/16.jpg",
  window_background_image_hsb = {
    brightness = 0.02,
    hue = 1.0,
    saturation = 1.0
  },
  --NOTE: bg opacity
  window_background_opacity = 1.0,
  -- window_decorations = "RESIZE",--INTEGRATED_BUTTONS NONE RESIZE

  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
  --NOTE: font
  -- warn_about_missing_glyphs = false,
  font = wezterm.font_with_fallback {
    'Dank Mono',
    'nonicons'
  },
  font_rules = {}, --controlar italic bold etc...
  font_size = 11.0,


  -- For example, changing the color scheme:
  color_scheme = 'Catppuccin Mocha',

  colors = {
    tab_bar = {
      active_tab = {
        bg_color = "#8197BF",
        fg_color = "#242424",
        italic = true
      }
      -- inactive_tab =
      -- inactive_tab_hover =
      -- new_tab =
      -- new_tab_hover =
    },
  },
disable_default_key_bindings = true,
keys = {
  -- moverme entre tabs
	{ key = "h", mods = "CTRL|SHIFT", action = act({ ActivateTabRelative = -1 }) },
	{ key = "l", mods = "CTRL|SHIFT", action = act({ ActivateTabRelative = 1 }) },
  -- new tab
	{ key = "t", mods = "CTRL|SHIFT", action = act({ SpawnTab = "CurrentPaneDomain" }) },

  --cambiar de posicion un tab
	{ key = "<", mods = "SHIFT|CTRL", action = act({ MoveTabRelative = -1 }) },
	{ key = ">", mods = "SHIFT|CTRL", action = act({ MoveTabRelative = 1 }) },

  -- cerrar tab
	{ key = "x", mods = "ALT", action = act({ CloseCurrentTab = { confirm = true } }) },

  -- new buffers
	{ key = "-", mods = "ALT", action = act({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
	{ key = "\\", mods = "ALT", action = act({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },

	{ key = "h", mods = "ALT|SHIFT", action = act({ ActivatePaneDirection = "Left" }) },
	{ key = "l", mods = "ALT|SHIFT", action = act({ ActivatePaneDirection = "Right" }) },
	{ key = "k", mods = "ALT|SHIFT", action = act({ ActivatePaneDirection = "Up" }) },
	{ key = "j", mods = "ALT|SHIFT", action = act({ ActivatePaneDirection = "Down" }) },
	{ key = "h", mods = "ALT|SHIFT|CTRL", action = act({ AdjustPaneSize = { "Left", 1 } }) },
	{ key = "l", mods = "ALT|SHIFT|CTRL", action = act({ AdjustPaneSize = { "Right", 1 } }) },
	{ key = "k", mods = "ALT|SHIFT|CTRL", action = act({ AdjustPaneSize = { "Up", 1 } }) },
	{ key = "j", mods = "ALT|SHIFT|CTRL", action = act({ AdjustPaneSize = { "Down", 1 } }) },
	{ key = "Enter", mods = "ALT", action = "QuickSelect" },
	{ key = "/", mods = "ALT", action = act.Search("CurrentSelectionOrEmptyString") },

  -- default
	{ key = "c", mods = "CTRL|SHIFT", action = act({ CopyTo = "Clipboard" }) },
	{ key = "v", mods = "CTRL|SHIFT", action = act({ PasteFrom = "Clipboard" }) },
	{ key = "Insert", mods = "SHIFT", action = act({ PasteFrom = "PrimarySelection" }) },
	{ key = "=", mods = "CTRL", action = "ResetFontSize" },
	{ key = "+", mods = "CTRL|SHIFT", action = "IncreaseFontSize" },
	{ key = "-", mods = "CTRL", action = "DecreaseFontSize" },
	{ key = "PageUp", mods = "ALT", action = act({ ScrollByPage = -1 }) },
	{ key = "PageDown", mods = "ALT", action = act({ ScrollByPage = 1 }) },
	-- { key = "b", mods = "ALT", action = act({ ScrollByPage = -1 }) },
	-- { key = "f", mods = "ALT", action = act({ ScrollByPage = 1 }) },
	{ key = "z", mods = "ALT", action = "ReloadConfiguration" },
	{ key = "z", mods = "ALT|SHIFT", action = act({ EmitEvent = "toggle-tmux-keybinds" }) },
	{ key = "e", mods = "ALT", action = act({ EmitEvent = "trigger-nvim-with-scrollback" }) },
	{ key = "q", mods = "ALT", action = act({ CloseCurrentPane = { confirm = true } }) },
	-- { key = "x", mods = "ALT", action = act({ CloseCurrentPane = { confirm = true } }) },
	{ key = "a", mods = "ALT", action = wezterm.action.ShowLauncher },
	{ key = " ", mods = "ALT", action = wezterm.action.ShowTabNavigator },
	{
		key = "r",
		mods = "ALT",
		action = act({
			ActivateKeyTable = {
				name = "resize_pane",
				one_shot = false,
				timeout_milliseconds = 3000,
				replace_current = false,
			},
		}),
	},
	{
		key = "T",
		mods = "CTRL|ALT|SHIFT",
		action = act.PromptInputLine({
			description = "Enter new name for tab",
			-- selene: allow(unused_variable)
			---@diagnostic disable-next-line: unused-local
			action = wezterm.action_callback(function(window, pane, line)
				-- line will be `nil` if they hit escape without entering anything
				-- An empty string if they just hit enter
				-- Or the actual line of text they wrote
				if line then
					window:active_tab():set_title(line)
				end
			end),
		}),
	},
}

}
