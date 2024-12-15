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

local dracula = {
    -- The default text color
    foreground = "#f8f8f2",
    -- The default background color
    background = "#282a36",

    -- Overrides the cell background color when the current cell is occupied by the
    -- cursor and the cursor style is set to Block
    cursor_bg = "#f8f8f2",
    -- Overrides the text color when the current cell is occupied by the cursor
    cursor_fg = "#282a36",
    -- Specifies the border color of the cursor when the cursor style is set to Block,
    -- or the color of the vertical or horizontal bar when the cursor style is set to
    -- Bar or Underline.
    cursor_border = "#f8f8f2",

    -- the foreground color of selected text
    selection_fg = "none",
    -- the background color of selected text
    selection_bg = "rgba(68,71,90,0.5)",

    -- The color of the scrollbar "thumb"; the portion that represents the current viewport
    scrollbar_thumb = "#44475a",

    -- The color of the split lines between panes
    split = "#6272a4",

    ansi = {"#21222C", "#FF5555", "#50FA7B", "#F1FA8C", "#BD93F9", "#FF79C6", "#8BE9FD", "#F8F8F2"},
    brights = {"#6272A4", "#FF6E6E", "#69FF94", "#FFFFA5", "#D6ACFF", "#FF92DF", "#A4FFFF", "#FFFFFF"},

    -- Since: nightly builds only
    -- When the IME, a dead key or a leader key are being processed and are effectively
    -- holding input pending the result of input composition, change the cursor
    -- to this color to give a visual cue about the compose state.
    -- compose_cursor = "#FFB86C",

    tab_bar = {
        -- The color of the strip that goes along the top of the window
        -- (does not apply when fancy tab bar is in use)
        background = "#282a36",

        -- The active tab is the one that has focus in the window
        active_tab = {
            -- The color of the background area for the tab
            bg_color = "#bd93f9",
            -- The color of the text for the tab
            fg_color = "#282a36",

            -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
            -- label shown for this tab.
            -- The default is "Normal"
            intensity = "Normal",

            -- Specify whether you want "None", "Single" or "Double" underline for
            -- label shown for this tab.
            -- The default is "None"
            underline = "None",

            -- Specify whether you want the text to be italic (true) or not (false)
            -- for this tab.  The default is false.
            italic = false,

            -- Specify whether you want the text to be rendered with strikethrough (true)
            -- or not for this tab.  The default is false.
            strikethrough = false
        },

        -- Inactive tabs are the tabs that do not have focus
        inactive_tab = {
            bg_color = "#282a36",
            fg_color = "#f8f8f2"

            -- The same options that were listed under the `active_tab` section above
            -- can also be used for `inactive_tab`.
        },

        -- You can configure some alternate styling when the mouse pointer
        -- moves over inactive tabs
        inactive_tab_hover = {
            bg_color = "#6272a4",
            fg_color = "#f8f8f2",
            italic = true

            -- The same options that were listed under the `active_tab` section above
            -- can also be used for `inactive_tab_hover`.
        },

        -- The new tab button that let you create new tabs
        new_tab = {
            bg_color = "#282a36",
            fg_color = "#f8f8f2"

            -- The same options that were listed under the `active_tab` section above
            -- can also be used for `new_tab`.
        },

        -- You can configure some alternate styling when the mouse pointer
        -- moves over the new tab button
        new_tab_hover = {
            bg_color = "#ff79c6",
            fg_color = "#f8f8f2",
            italic = true

            -- The same options that were listed under the `active_tab` section above
            -- can also be used for `new_tab_hover`.
        }
    }
}

config.colors = dracula

-- Finally, return the configuration to wezterm
return config
