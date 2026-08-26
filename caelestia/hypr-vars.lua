local scheme = require("scheme.current")

return {
    ------------------
    ---- HYPRLAND ----
    ------------------
    -- Mainmod
    mainMod = "ALT",

    -- Apps
    terminal                   = "kitty",
    browser                    = "brave",
    editor                     = "neovim",
    fileExplorer               = "dolphin",
    audioSettings              = "pavucontrol",

    -- Touchpad
    touchpadDisableTyping      = true,
    touchpadScrollFactor       = 0.5,
    gestureFingers             = 3,
    workspaceSwipeFingers      = 4,
    gestureFingersMore         = 4,

    -- Blur
    blurEnabled                = true,
    blurSpecialWs              = false,
    blurPopups                 = true,
    blurInputMethods           = true,
    blurSize                   = 8,
    blurPasses                 = 2,
    blurXray                   = false,

    -- Shadow
    shadowEnabled              = true,
    shadowRange                = 15,
    shadowRenderPower          = 4,
    shadowColour               = "rgba(" .. scheme.inversePrimary .. "10)",

    -- Gaps
    workspaceGaps              = 5,
    windowGapsIn               = 5,
    windowGapsOut              = 5,
    singleWindowGapsOut        = 5,

    -- Window styling
    windowOpacity              = 0.95,
    windowRounding             = 15,
    windowBorderSize           = 1,
    activeWindowBorderColour   = "rgba(" .. scheme.primary .. "e6)",
    inactiveWindowBorderColour = "rgba(" .. scheme.onSurfaceVariant .. "11)",

    -- Misc
    volumeStep                 = 5,
    volumeMax                  = 100,
    cursorTheme                = "sweet-cursors",
    cursorSize                 = 24,
    sleepGestureCmd            = "systemctl suspend-then-hibernate",

    ------------------
    ---- KEYBINDS ----
    ------------------

    -- Workspaces
    kbMoveWinToWs              = "ALT + SHIFT",
    kbMoveWinToWsGroup         = "CTRL + SUPER + ALT",
    kbGoToWs                   = "ALT",
    kbGoToWsGroup              = "CTRL + SUPER",
    kbNextWs                   = "CTRL + SUPER + Right",
    kbPrevWs                   = "CTRL + SUPER + Left",

    -- Window Group
    kbWindowGroupCycleNext     = "ALT + TAB",
    kbWindowGroupCyclePrev     = "SHIFT + ALT + TAB",
    kbUngroup                  = "SUPER + U",
    kbToggleGroup              = "SUPER + Comma",

    -- Window Action
    kbMoveWindow               = "SUPER + Z",
    kbResizeWindow             = "ALT + X",
    kbWindowPip                = "SUPER + ALT + backslash",
    kbPinWindow                = "SUPER + P",
    kbWindowFullscreen         = "ALT + F",
    kbWindowBorderedFullscreen = "SUPER + ALT + F",
    kbToggleWindowFloating     = "SUPER + ALT + space",
    kbCloseWindow              = "ALT + Q",

    -- Special workspaces toggles
    kbSpecialWs                = "SUPER + S",
    kbSystemMonitorWs          = "CTRL + SHIFT + Escape",
    kbMusicWs                  = "SUPER + M",
    kbCommunicationWs          = "SUPER + D",

    -- Apps
    kbTerminal                 = "ALT + T",
    kbBrowser                  = "ALT + B",
    kbEditor                   = "ALT + C",
    kbFileExplorer             = "ALT + E",

    -- Misc
    kbSession                  = "CTRL + ALT + Delete",
    kbShowSidebar              = "ALT + N",
    kbClearNotifs              = "CTRL + ALT + C",
    kbShowPanels               = "SUPER + K",
    kbLock                     = "SUPER + SHIFT + L",
    kbRestoreLock              = "SUPER + ALT + L",
}
