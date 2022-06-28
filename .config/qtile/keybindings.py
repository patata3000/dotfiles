"""Holds keybindings for qtile."""
import os
from libqtile.config import Group, Key, Click, Drag
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

terminal = guess_terminal()
MOD, CONTROL, SHIFT = "mod4", "control", "shift"
HOME_DIRECTORY = os.getenv("HOME")

not_sure_what_they_do = [
    # Resize
    Key([MOD], "f", lazy.window.toggle_fullscreen, desc="Toggle fullscreen"),
    # Switch window focus to other pane(s) of stack
    Key(
        [MOD],
        "space",
        lazy.layout.next(),
        desc="Switch window focus to other pane(s) of stack",
    ),
    # Swap panes of split stack
    Key(
        [MOD, SHIFT],
        "space",
        lazy.layout.rotate(),
        desc="Swap panes of split stack",
    ),
    # Key([MOD], "v", lazy.spawn("notify-send 'toto' --icon=dialog-information")),
    # Move windows
    Key(
        [MOD, SHIFT],
        "o",
        lazy.screen.shuffle_next(),
        desc="Move window down in current stack",
    ),
]
move_windows_keys = [
    Key(
        [MOD, SHIFT],
        "n",
        lazy.layout.shuffle_down(),
        desc="Move window down in current stack",
    ),
    Key(
        [MOD, SHIFT],
        "e",
        lazy.layout.shuffle_up(),
        desc="Move window up in current stack",
    ),
    Key(
        [MOD, SHIFT],
        "y",
        lazy.layout.shuffle_left(),
        desc="Move window left in current stack",
    ),
    Key(
        [MOD, SHIFT],
        "o",
        lazy.layout.shuffle_right(),
        desc="Move window right in current stack",
    ),
]
select_windows_keys = [
    Key([MOD], "n", lazy.layout.down(), desc="Move focus down in stack pane"),
    Key([MOD], "e", lazy.layout.up(), desc="Move focus up in stack pane"),
    Key([MOD], "y", lazy.layout.left(), desc="Move focus left in stack pane"),
    Key([MOD], "o", lazy.layout.right(), desc="Move focus right in stack pane"),
]
select_screen_keys = [
    Key([MOD, CONTROL], "y", lazy.to_screen(0)),
    Key([MOD, CONTROL], "o", lazy.to_screen(1)),
]
application_keys = [
    Key(
        [MOD],
        "g",
        lazy.spawn(
            "rofi -show-icons -show run -run-shell-command "
            "'{terminal} -e \"{cmd}; read -n 1 -s\"'",
        ),
        desc="Application launcher",
    ),
    Key([MOD], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    Key([MOD], "j", lazy.spawn("shutter"), desc="Screenshot manager"),
    Key(
        [MOD],
        "w",
        lazy.spawn("simplescreenrecorder"),
        desc="Screen video recorder",
    ),
    Key([MOD], "f", lazy.spawn("pavucontrol -t 5"), desc="Sound controller"),
    Key([MOD, SHIFT], "u", lazy.spawn("edit-config"), desc="Edit config files"),
    Key([MOD], "u", lazy.spawn("blueberry"), desc="Bluetooth manager GUI"),
    Key([MOD], "p", lazy.spawn("pass-get"), desc="Password with dmenu"),
    Key(
        [MOD],
        "v",
        lazy.spawn(f"term_exec nvim -c NeorgStart"),
        desc="TODO list",
    ),
    Key(
        [MOD],
        "q",
        lazy.spawn(f"term_exec neomutt"),
        desc="Start neomutt in a terminal",
    ),
]
# select_group_keys = [
#     Key(
#         [MOD, CONTROL],
#         "y",
#         lazy.screen.prev_group(),
#         desc="Focus previous group",
#     ),
#     Key([MOD, CONTROL], "o", lazy.screen.next_group(), desc="Focus next group"),
# ]
resize_keys = [
    Key([MOD, CONTROL], "n", [], lazy.layout.grow_down(), desc=""),
    Key([MOD, CONTROL], "e", [], lazy.layout.grow_up(), desc=""),
    #     Key([MOD, CONTROL], "y", [], lazy.layout.grow_left(), desc=""),
    #     Key([MOD, CONTROL], "o", [], lazy.layout.grow_right(), desc=""),
]
layout_keys = [
    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplik = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key(
        [MOD, SHIFT],
        "Return",
        lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack",
    ),
    Key([MOD], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
]
system_control_keys = [
    Key([], "XF86MonBrightnessUp", lazy.spawn("xbacklight -inc 5")),
    Key([CONTROL], "XF86MonBrightnessDown", lazy.spawn("xbacklight -dec 1")),
    Key([CONTROL], "XF86MonBrightnessUp", lazy.spawn("xbacklight -inc 1")),
    Key([], "XF86MonBrightnessDown", lazy.spawn("xbacklight -dec 5")),
    Key([], "XF86AudioMute", lazy.spawn("amixer -q set Master toggle")),
    Key(
        [],
        "XF86AudioLowerVolume",
        lazy.spawn("amixer -c 0 sset Master 1- unmute"),
    ),
    Key(
        [],
        "XF86AudioRaiseVolume",
        lazy.spawn("amixer -c 0 sset Master 1+ unmute"),
    ),
    Key([MOD, SHIFT], "l", lazy.spawn("slock")),
    Key([MOD], "d", lazy.window.kill(), desc="Kill focused window"),
    Key([MOD, CONTROL], "r", lazy.restart(), desc="Restart qtile"),
    Key([MOD, CONTROL], "q", lazy.shutdown(), desc="Shutdown qtile"),
]
groups = [Group(i) for i in "ashtzxmc"]
select_group_keys = [
    # mod1 + letter of group = switch to group
    Key(
        [MOD],
        group.name,
        lazy.group[group.name].toscreen(),
        desc=f"Switch to group {group.name}",
    )
    for group in groups
]
move_window_group_keys = [
    # mod1 + shift + letter of group = move focused window
    # to group
    Key(
        [MOD, SHIFT],
        group.name,
        lazy.window.togroup(group.name),
        desc=f"Switch to & move focused window to group {group.name}",
    )
    # Or, use below if you prefer not to switch to that group.
    # # mod1 + shift + letter of group = move focused window to group
    # Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
    #     desc="move focused window to group {}".format(i.name)),
    for group in groups
]
keys = [
    *select_windows_keys,
    *select_screen_keys,
    *move_windows_keys,
    *system_control_keys,
    *resize_keys,
    *layout_keys,
    *select_group_keys,
    *application_keys,
    *select_group_keys,
    *move_window_group_keys,
]
mouse = [
    Drag(
        [MOD],
        "Button1",
        lazy.window.set_position_floating(),
        start=lazy.window.get_position(),
    ),
    Drag(
        [MOD],
        "Button3",
        lazy.window.set_size_floating(),
        start=lazy.window.get_size(),
    ),
    Click([MOD], "Button2", lazy.window.bring_to_front()),
]
