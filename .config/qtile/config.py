"""Config file for qtile."""
import subprocess
from typing import List

from status_bar import extension_defaults, widget_defaults
from screens import screens
from keybindings import groups, keys, mouse
from hooks import (
    autostart,
    autostart_complete,
    autostart_once,
    restart_on_randr,
)
from layouts import floating_layout, layouts


def notify(string):
    bash_command = f"notify-send {string}"
    process = subprocess.Popen(bash_command.split(), stdout=subprocess.PIPE)
    output, error = process.communicate()


# lazy.layout.increase_ratio ## Increase the space for master window at the expense of slave windows
# lazy.window.toggle_floating
#
# lazy.group["group_name"].dropdown_toggle("name") ## Toggles the visibility of the specified DropDown window. On first use, the configured process is spawned.
# lazy.group['scratchpad'].dropdown_toggle('qshell')) ## # toggle visibiliy of above defined DropDown named "term"
#
# dgroups_key_binder = None
# dgroups_app_rules = []  # type: List
follow_mouse_focus = True
bring_front_click = True
cursor_warp = True
## auto_fullscreen = True
focus_on_window_activation = "focus"
##
# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
## #
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
