-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- do not check for updates
config.check_for_updates = false

-- set shell
config.default_prog = { "nu" }

-------------------------------------------------------------------------------
-- COLORS & APPEREANCE
-------------------------------------------------------------------------------

-- color sheme
config.color_scheme = "Catppuccin Mocha"

-- font
config.font = wezterm.font("JetBrainsMono Nerd Font Mono")

-- window padding
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-------------------------------------------------------------------------------
-- KEY MAPS
-------------------------------------------------------------------------------

config.leader = { key = "g", mods = "CTRL" }

config.keys = {
	{
		key = "s",
		mods = "LEADER",
		action = act.QuickSelect,
	},
	{
		key = "y",
		mods = "LEADER",
		action = act.ActivateCopyMode,
	},
	{
		key = "r",
		mods = "LEADER",
		action = act.ReloadConfiguration,
	},
	{
		key = "p",
		mods = "LEADER",
		action = act.ActivateKeyTable({
			name = "pane",
			one_shot = false,
		}),
	},
	{
		key = "t",
		mods = "LEADER",
		action = act.ActivateKeyTable({
			name = "tab",
			one_shot = false,
		}),
	},
}

config.key_tables = {
	pane = {
		-- split horizontal (right)
		{
			key = "n",
			action = act.Multiple({
				act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
				act.PopKeyTable,
			}),
		},
		{
			key = "|",
			action = act.Multiple({
				act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
				act.PopKeyTable,
			}),
		},

		-- split vertical (down)
		{
			key = "-",
			action = act.Multiple({
				act.SplitVertical({ domain = "CurrentPaneDomain" }),
				act.PopKeyTable,
			}),
		},

		-- close
		{
			key = "x",
			action = act.Multiple({
				act.CloseCurrentPane({ confirm = true }),
				act.PopKeyTable,
			}),
		},

		-- toggle fullscreen
		{
			key = "f",
			action = act.Multiple({
				act.TogglePaneZoomState,
				act.PopKeyTable,
			}),
		},

		-- quick selection
		{
			key = "q",
			action = act.Multiple({
				act.PaneSelect({ mode = "Activate" }),
				act.PopKeyTable,
			}),
		},

		-- swap
		{
			key = "s",
			action = act.Multiple({
				act.PaneSelect({ mode = "SwapWithActiveKeepFocus" }),
				act.PopKeyTable,
			}),
		},

		-- move to new tab
		{
			key = "b",
			action = act.Multiple({
				act.PaneSelect({ mode = "MoveToNewTab" }),
				act.PopKeyTable,
			}),
		},

		-- move to new window
		{
			key = "b",
			mods = "SHIFT",
			action = act.Multiple({
				act.PaneSelect({ mode = "MoveToNewWindow" }),
				act.PopKeyTable,
			}),
		},

		-- change focus
		{
			key = "h",
			action = act.ActivatePaneDirection("Left"),
		},
		{
			key = "j",
			action = act.ActivatePaneDirection("Down"),
		},
		{
			key = "k",
			action = act.ActivatePaneDirection("Up"),
		},
		{
			key = "l",
			action = act.ActivatePaneDirection("Right"),
		},
		{
			key = "LeftArrow",
			action = act.ActivatePaneDirection("Left"),
		},
		{
			key = "DownArrow",
			action = act.ActivatePaneDirection("Down"),
		},
		{
			key = "UpArrow",
			action = act.ActivatePaneDirection("Up"),
		},
		{
			key = "RightArrow",
			action = act.ActivatePaneDirection("Right"),
		},

		-- resize
		{
			key = "h",
			mods = "SHIFT",
			action = act.AdjustPaneSize({ "Left", 1 }),
		},
		{
			key = "j",
			mods = "SHIFT",
			action = act.AdjustPaneSize({ "Down", 1 }),
		},
		{
			key = "k",
			mods = "SHIFT",
			action = act.AdjustPaneSize({ "Up", 1 }),
		},
		{
			key = "l",
			mods = "SHIFT",
			action = act.AdjustPaneSize({ "Right", 1 }),
		},
		{
			key = "LeftArrow",
			mods = "SHIFT",
			action = act.AdjustPaneSize({ "Left", 1 }),
		},
		{
			key = "DownArrow",
			mods = "SHIFT",
			action = act.AdjustPaneSize({ "Down", 1 }),
		},
		{
			key = "UpArrow",
			mods = "SHIFT",
			action = act.AdjustPaneSize({ "Up", 1 }),
		},
		{
			key = "RightArrow",
			mods = "SHIFT",
			action = act.AdjustPaneSize({ "Right", 1 }),
		},

		-- pop key table
		{
			key = "Escape",
			action = act.PopKeyTable,
		},
	},

	tab = {
		-- new
		{
			key = "n",
			action = act.Multiple({
				act.SpawnTab("CurrentPaneDomain"),
				act.PopKeyTable,
			}),
		},

		-- close
		{
			key = "x",
			action = act.Multiple({
				act.CloseCurrentTab({ confirm = true }),
				act.PopKeyTable,
			}),
		},

		-- quick selection
		{
			key = "q",
			action = act.Multiple({
				act.ShowTabNavigator,
				act.PopKeyTable,
			}),
		},

		-- change focus
		{
			key = "h",
			action = act.ActivateTabRelative(-1),
		},
		{
			key = "l",
			action = act.ActivateTabRelative(1),
		},
		{
			key = "LeftArrow",
			action = act.ActivateTabRelative(-1),
		},
		{
			key = "RightArrow",
			action = act.ActivateTabRelative(1),
		},

		-- move
		{
			key = "h",
			mods = "SHIFT",
			action = act.MoveTabRelative(-1),
		},
		{
			key = "l",
			mods = "SHIFT",
			action = act.MoveTabRelative(1),
		},
		{
			key = "LeftArrow",
			mods = "SHIFT",
			action = act.MoveTabRelative(-1),
		},
		{
			key = "RightArrow",
			mods = "SHIFT",
			action = act.MoveTabRelative(1),
		},

		-- toggle last
		{
			key = "Tab",
			action = act.ActivateLastTab,
		},

		-- pop key table
		{
			key = "Escape",
			action = act.PopKeyTable,
		},
	},
}

-- Show which key table is active in the status area
wezterm.on("update-right-status", function(window, _)
	local name = window:active_key_table()
	if name then
		name = "TABLE: " .. name
	end
	window:set_right_status(name or "")
end)

return config
