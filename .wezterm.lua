local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font = wezterm.font("FiraCode Nerd Font")
config.color_scheme = 'Afterglow'

-- Set PowerShell as the default shell
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	-- config.default_prog = { "pwsh.exe" }
	config.default_prog = { "powershell.exe" }
end

-- 设置powershell默认的工作目录
-- config.default_cwd = "D:"

-- 修改切换终端快捷键
config.keys = {

	{ key = "h",   mods = "CTRL|ALT",   action = wezterm.action({ ActivateTabRelative = -1 }) },
	{ key = "l",   mods = "CTRL|ALT",   action = wezterm.action({ ActivateTabRelative = 1 }) },
	{ key = "w",   mods = "CTRL|ALT",   action = wezterm.action({ CloseCurrentTab = { confirm = true } }) },
	{ key = "n",   mods = "CTRL|ALT",   action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
	-- F11 切换全屏
	{ key = "F11", mods = "NONE",       action = wezterm.action.ToggleFullScreen },
	-- Ctrl + Shift + - 缩小字体
	{ key = "-",   mods = "CTRL|SHIFT", action = wezterm.action.IncreaseFontSize },
	-- Ctrl + Shift + = 扩大字体
	{ key = "=",   mods = "CTRL|SHIFT", action = wezterm.action.DecreaseFontSize },
	-- Ctrl + Shift + 0 重置字体
	{ key = "0",   mods = "CTRL|SHIFT", action = wezterm.action.ResetFontSize },
	-- 垂直分屏
	{ key = "d",   mods = "CTRL|SHIFT", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
	-- 水平分屏
	{ key = "s",   mods = "CTRL|SHIFT", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
	-- 关闭当前窗格
	{ key = "w",   mods = "CTRL|SHIFT", action = wezterm.action({ CloseCurrentPane = { confirm = true } }) },
	-- 切换到左侧窗格
	{ key = "h",   mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
	-- 切换到下方窗格
	{ key = "j",   mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Down" }) },
	-- 切换到上方窗格
	{ key = "k",   mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
	-- 切换到右侧窗格
	{ key = "l",   mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Right" }) },
}

config.colors = {
	-- The default text color
	foreground = '#d3c6aa',
	-- The default background color
	background = '#3a3a3a',

	-- Overrides the cell background color when the current cell is occupied by the
	-- cursor and the cursor style is set to Block
	cursor_bg = '#f6f7ec',
	-- Overrides the text color when the current cell is occupied by the cursor
	cursor_fg = '#292520',
	-- Specifies the border color of the cursor when the cursor style is set to Block,
	-- or the color of the vertical or horizontal bar when the cursor style is set to
	-- Bar or Underline.
	cursor_border = '#f6f7ec',

	-- the foreground color of selected text
	selection_fg = '#e5c7a9',
	-- the background color of selected text
	selection_bg = '#5c3f4f',

	ansi = {
		--black
		"#2b2727",
		--red
		"#d94b42",
		--green
		"#7da35a",
		--yellow
		"#cd9125",
		--blue
		"#1398b9",
		--magenta
		"#ae65b0",
		--cyan
		"#d98246",
		--white
		"#e5c6aa",
	},
	brights = {
		--black
		"#675f54",
		--red
		"#ff9269",
		--green
		"#98e036",
		--yellow
		"#e0d561",
		--blue
		"#5fdaff",
		--magenta
		"#fc7eff",
		--cyan
		"#ff8c3c",
		--white
		"#f6f7ec",
	},
}

-- 配置SSH域
-- config.ssh_domains = {
-- 	{
-- 		name = "energy", -- 配置标识域名
-- 		remote_address = "47.104", -- 配置远程地址
-- 		username = "root", -- 配置用户名
-- 	},
-- }

-- 配置wsl域
-- config.wsl_domains = {
-- 	{
-- 		name = "wsl:arch",
-- 		distribution = "arch",
-- 	},
-- }
-- config.default_domain = "wsl:arch"


-- 关闭时不进行确认
config.window_close_confirmation = "NeverPrompt"

-- 配置透明背景
config.window_background_opacity = 1 -- 设置透明度
config.text_background_opacity = 1   -- 设置文字透明度
-- 设置背景图片
-- config.window_background_image = "C:\\Users\\liamyi\\Pictures\\tree.png"
-- 如果只有一个标签页，则隐藏标签栏
-- config.hide_tab_bar_if_only_one_tab = false
-- 隐藏底部状态栏
-- config.window_decorations = "RESIZE"
-- 禁用滚动条
-- config.enable_scroll_bar = false
-- 配置字体大小
config.font_size = 13
-- 配置窗口打开时默认大小
config.initial_cols = 150
config.initial_rows = 35
-- config.use_fancy_tab_bar = false
config.enable_tab_bar = true
-- config.show_tab_index_in_tab_bar = true
-- 配置窗口为圆角
config.window_background_image_hsb = {
	brightness = 1, -- 调整背景图片亮度
	hue = 1,        -- 调整背景图片色调
	saturation = 1, -- 调整背景图片饱和度
}

-- Finally, return the configuration to wezterm
return config
