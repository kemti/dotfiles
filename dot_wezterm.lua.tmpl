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

config.leader = { key = "Space", mods = "CTRL" }
config.keys = {

	-- TAB ----------------------------------------------------------------------

	-- spawn tab
	{
		key = "c",
		mods = "LEADER",
		action = act.SpawnTab("CurrentPaneDomain"),
	},
	-- close current tab
	{
		key = "&",
		mods = "LEADER",
		action = act.CloseCurrentTab({ confirm = true }),
	},
	-- previous tab
	{
		key = "p",
		mods = "LEADER",
		action = act.ActivateTabRelative(-1),
	},
	-- next tab
	{
		key = "n",
		mods = "LEADER",
		action = act.ActivateTabRelative(1),
	},
	-- go into tab mode
	{
		key = "t",
		mods = "LEADER",
		action = act.ActivateKeyTable({
			name = "tab",
			one_shot = false,
		}),
	},

	-- PANE ---------------------------------------------------------------------

	-- split vertical
	{
		key = '"',
		mods = "LEADER",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	-- split horizontal
	{
		key = "%",
		mods = "LEADER",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	-- close pane
	{
		key = "x",
		mods = "LEADER",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	-- show pane selection
	{
		key = "q",
		mods = "LEADER",
		action = act.PaneSelect({ mode = "Activate" }),
	},
	-- swap selected pane with active pane
	{
		key = "s",
		mods = "LEADER",
		action = act.PaneSelect({ mode = "SwapWithActive" }),
	},
	-- move pane to new tab
	-- {
	-- 	key = "!",
	-- 	mods = "LEADER",
	-- 	action = act.PaneSelect({ mode = "MoveToNewTab" }),
	-- },
	-- toggle pane zoom
	{
		key = "z",
		mods = "LEADER",
		action = act.TogglePaneZoomState,
	},
	-- activate pane: left
	{
		key = "h",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Left"),
	},
	-- activate pane: right
	{
		key = "l",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Right"),
	},
	-- activate pane: up
	{
		key = "k",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Up"),
	},
	-- activate pane: down
	{
		key = "j",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Down"),
	},
	-- go into pane mode
	{
		key = "P",
		mods = "LEADER",
		action = act.ActivateKeyTable({
			name = "pane",
			one_shot = false,
		}),
	},
}
-- activate tab: 0..7
for i = 1, 8 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "LEADER",
		action = act.ActivateTab(i - 1),
	})
end

-- Show which key table is active in the status area
wezterm.on("update-right-status", function(window, pane)
	local name = window:active_key_table()
	if name then
		name = "TABLE: " .. name
	end
	window:set_right_status(name or "")
end)

config.key_tables = {
	pane = {
		-- split vertical
		{ key = '"', action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },

		-- split horizontal
		{ key = "%", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },

		-- close pane
		{ key = "x", action = wezterm.action.CloseCurrentPane({ confirm = true }) },

		-- show pane selection
		{ key = "q", action = act.PaneSelect({ mode = "Activate" }) },

		-- swap selected pane with active pane
		{ key = "s", action = act.PaneSelect({ mode = "SwapWithActive" }) },

		-- move pane to new tab
		-- {	key = "!",	action = act.PaneSelect({ mode = "MoveToNewTab" })	},

		-- toggle pane zoom
		{ key = "z", action = act.TogglePaneZoomState },

		-- activate pane: left
		{ key = "LeftArrow", action = act.ActivatePaneDirection("Left") },
		{ key = "h", action = act.ActivatePaneDirection("Left") },

		-- activate pane: right
		{ key = "RightArrow", action = act.ActivatePaneDirection("Right") },
		{ key = "l", action = act.ActivatePaneDirection("Right") },

		-- activate pane: up
		{ key = "UpArrow", action = act.ActivatePaneDirection("Up") },
		{ key = "k", action = act.ActivatePaneDirection("Up") },

		-- activate pane: down
		{ key = "DownArrow", action = act.ActivatePaneDirection("Down") },
		{ key = "j", action = act.ActivatePaneDirection("Down") },

		-- resize pane: left
		{ key = "LeftArrow", mods = "CTRL", action = act.AdjustPaneSize({ "Left", 1 }) },
		{ key = "h", mods = "CTRL", action = act.AdjustPaneSize({ "Left", 1 }) },

		-- resize pane: right
		{ key = "RightArrow", mods = "CTRL", action = act.AdjustPaneSize({ "Right", 1 }) },
		{ key = "l", mods = "CTRL", action = act.AdjustPaneSize({ "Right", 1 }) },

		-- resize pane: up
		{ key = "UpArrow", mods = "CTRL", action = act.AdjustPaneSize({ "Up", 1 }) },
		{ key = "k", mods = "CTRL", action = act.AdjustPaneSize({ "Up", 1 }) },

		-- resize pane: down
		{ key = "DownArrow", mods = "CTRL", action = act.AdjustPaneSize({ "Down", 1 }) },
		{ key = "j", mods = "CTRL", action = act.AdjustPaneSize({ "Down", 1 }) },

		-- exit pane mode
		{ key = "Escape", action = "PopKeyTable" },
	},
	tab = {
		-- spawn tab
		{ key = "c", action = act.SpawnTab("CurrentPaneDomain") },

		-- close current tab
		{ key = "&", action = act.CloseCurrentTab({ confirm = true }) },

		-- previous tab
		{ key = "p", action = act.ActivateTabRelative(-1) },

		-- next tab
		{ key = "n", action = act.ActivateTabRelative(1) },

		-- move tab: left
		{ key = "p", mods = "CTRL", action = act.MoveTabRelative(-1) },

		-- move tab: right
		{ key = "n", mods = "CTRL", action = act.MoveTabRelative(1) },

		-- go into tab mode
		{
			key = "t",
			action = act.ActivateKeyTable({
				name = "tab",
				one_shot = false,
			}),
		},

		-- exit tab mode
		{ key = "Escape", action = "PopKeyTable" },
	},
}

for i = 1, 8 do
	-- activate tab: 0..7 (tab mode)
	table.insert(config.key_tables.tab, {
		key = tostring(i),
		action = act.ActivateTab(i - 1),
	})
	-- move tab to position
	table.insert(config.key_tables.tab, {
		key = tostring(i),
		mods = "CTRL",
		action = act.MoveTab(i - 1),
	})
end

return config
