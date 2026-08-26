local vars = require("variables")
local fn   = require("hyprland.functions")

return {

    -- Applications
    hl.bind(vars.mainMod .. "+ T", hl.dsp.exec_cmd("app2unit -- kitty.desktop")),

    -- Window actions
    hl.bind(vars.mainMod .. "+ H", hl.dsp.focus({ direction = "left" })),
    hl.bind(vars.mainMod .. "+ L", hl.dsp.focus({ direction = "right" })),
    hl.bind(vars.mainMod .. "+ K", hl.dsp.focus({ direction = "up" })),
    hl.bind(vars.mainMod .. "+ J", hl.dsp.focus({ direction = "down" })),
    hl.bind(vars.mainMod .. "+ SHIFT + H", hl.dsp.window.move({ direction = "left" })),
    hl.bind(vars.mainMod .. "+ SHIFT + L", hl.dsp.window.move({ direction = "right" })),
    hl.bind(vars.mainMod .. "+ SHIFT + K", hl.dsp.window.move({ direction = "up" })),
    hl.bind(vars.mainMod .. "+ SHIFT + J", hl.dsp.window.move({ direction = "down" })),
    hl.bind(vars.mainMod .. "+ Minus", hl.dsp.window.resize(fn.resize_active_window(-10, 0)), { repeating = true }),
    hl.bind(vars.mainMod .. "+ Equal", hl.dsp.window.resize(fn.resize_active_window(10, 0)), { repeating = true }),
    hl.bind(vars.mainMod .. "+ SHIFT + Minus", hl.dsp.window.resize(fn.resize_active_window(0, -10)),
        { repeating = true }),
    hl.bind(vars.mainMod .. "+ SHIFT + Equal", hl.dsp.window.resize(fn.resize_active_window(0, 10)), { repeating = true }),
    hl.bind(vars.mainMod .. "+ ALT + SHIFT + left", hl.dsp.window.resize(fn.resize_active_window(-10, 0)),
        { repeating = true }),
    hl.bind(vars.mainMod .. "+ ALT + SHIFT + right", hl.dsp.window.resize(fn.resize_active_window(10, 0)),
        { repeating = true }),
    hl.bind(vars.mainMod .. "+ ALT + SHIFT + up", hl.dsp.window.resize(fn.resize_active_window(0, -10)),
        { repeating = true }),
    hl.bind(vars.mainMod .. "+ ALT + SHIFT + down", hl.dsp.window.resize(fn.resize_active_window(0, 10)),
        { repeating = true }),

    -- Utilities
    hl.bind("Print", hl.dsp.exec_cmd("caelestia screenshot"), { locked = true }),
    hl.bind("ALT + S", hl.dsp.global("caelestia:screenshotFreeze")),
    hl.bind("ALT + SHIFT + S", hl.dsp.global("caelestia:screenshot")),
    hl.bind("ALT + R", hl.dsp.exec_cmd("caelestia record -s")),
    hl.bind("CTRL + ALT + R", hl.dsp.exec_cmd("caelestia record")),
    hl.bind("ALT + SHIFT + R", hl.dsp.exec_cmd("caelestia record -r -s")),
    hl.bind("ALT + SHIFT + C", hl.dsp.exec_cmd("hyprpicker -a")),
    hl.bind("ALT + SHIFT + B", hl.dsp.global("caelestia:bar")),

    -- Input
    hl.config({
        input = {
            kb_layout          = "gb, br",
            kb_options         = "grp:alt_caps_toggle",
            numlock_by_default = false,
            repeat_delay       = 250,
            repeat_rate        = 35,
            focus_on_close     = 1,

            touchpad           = {
                natural_scroll       = true,
                disable_while_typing = vars.touchpadDisableTyping,
                scroll_factor        = vars.touchpadScrollFactor,
            },
        },

        binds = {
            scroll_event_delay = 0,
        },

        cursor = {
            hotspot_padding = 1,
        },
    }),

    -- Monitor conf
    hl.monitor({
        output   = "",
        mode     = "preferred",
        position = "auto",
        scale    = 1.33,
    })

}
