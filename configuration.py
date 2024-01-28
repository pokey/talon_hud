from talon import Module
from typing import Any
import os

# Defaults
preferences_dir = "/Users/pokey/src/pokey_talon/talon-hud-settings" # default

# This file is used for all the configurations like custom paths etc
hud_configuration = {
    "user_preferences_folder": preferences_dir,
    "content_preferences_folder": preferences_dir,
}

def hud_get_configuration(title: str, default = None) -> Any:
    global hud_configuration
    return hud_configuration[title] if title in hud_configuration else default

mod = Module()
@mod.action_class
class Actions:

    def hud_get_configuration(title: str, default: Any = None) -> Any:
        """Get a configuration setting from the HUD setting object"""
        return hud_get_configuration(title, default)