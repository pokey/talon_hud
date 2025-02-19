tag: user.talon_hud_available
-
# General HUD commands
^head up (show|open)$: user.enable_hud()
^head up theme {user.talon_hud_themes}$: user.switch_hud_theme(talon_hud_themes)
^head up (drop|stop|confirm)$: user.set_hud_setup_mode("*", "")
^head up cancel$: user.set_hud_setup_mode("*", "cancel")
^head up (hide|close)$: user.disable_hud()

# Widget setup commands
^head up (show|open) {user.talon_hud_widget_names}$: user.enable_hud_id(talon_hud_widget_names)
^head up (hide|close) {user.talon_hud_widget_names}$: user.disable_hud_id(talon_hud_widget_names)
^head up resize {user.talon_hud_widget_names}$: user.set_hud_setup_mode(talon_hud_widget_names, "dimension")
^head up expand {user.talon_hud_widget_names}$: user.set_hud_setup_mode(talon_hud_widget_names, "limit")
^head up text scale {user.talon_hud_widget_names}$: user.set_hud_setup_mode(talon_hud_widget_names, "font_size")
^head up drag {user.talon_hud_widget_names}+$: 
    user.set_hud_setup_mode_multi(talon_hud_widget_names_list, "position")
^head up basic {user.talon_hud_widget_names}$: user.set_widget_preference(talon_hud_widget_names, "show_animations", 0)
^head up fancy {user.talon_hud_widget_names}$: user.set_widget_preference(talon_hud_widget_names, "show_animations", 1)
^head up hide {user.talon_hud_widget_names} on sleep$: user.set_widget_preference(talon_hud_widget_names, "sleep_enabled", 0)
^head up show {user.talon_hud_widget_names} on sleep$: user.set_widget_preference(talon_hud_widget_names, "sleep_enabled", 1)
^head up align {user.talon_hud_widget_names} right$: user.set_widget_preference(talon_hud_widget_names, "alignment", "right")
^head up align {user.talon_hud_widget_names} left$: user.set_widget_preference(talon_hud_widget_names, "alignment", "left")
^head up align {user.talon_hud_widget_names} center$: user.set_widget_preference(talon_hud_widget_names, "alignment", "center")
^head up align {user.talon_hud_widget_names} top$: user.set_widget_preference(talon_hud_widget_names, "expand_direction", "down")
^head up align {user.talon_hud_widget_names} bottom$: user.set_widget_preference(talon_hud_widget_names, "expand_direction", "up")

# Widget content commands
^{user.talon_hud_widget_names} (show|open)$: user.enable_hud_id(talon_hud_widget_names)
^{user.talon_hud_widget_names} (hide|close)$: user.disable_hud_id(talon_hud_widget_names)
^{user.talon_hud_widget_names} minimize$: user.set_widget_preference(talon_hud_widget_names, "minimized", 1)
^{user.talon_hud_widget_names} maximize$: user.set_widget_preference(talon_hud_widget_names, "minimized", 0)
^{user.talon_hud_widget_names} next: user.increase_widget_page(talon_hud_widget_names)
^{user.talon_hud_widget_names} (back|previous): user.decrease_widget_page(talon_hud_widget_names)
^{user.talon_hud_widget_names} options: user.hud_widget_options(talon_hud_widget_names)