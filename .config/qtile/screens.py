"""Screen config for qtile."""
from Xlib import display as xdisplay

from libqtile.config import Screen
from libqtile.bar import Bar
from libqtile import bar, widget
from status_bar import get_status_bar


def get_num_monitors():
    # notify-send "Failed loading ~/.Xkeymap_qwerty file"'
    #             " --icon=dialog-information'
    num_monitors = 0
    try:
        display = xdisplay.Display()
        screen = display.screen()
        resources = screen.root.xrandr_get_screen_resources()

        for output in resources.outputs:
            monitor = display.xrandr_get_output_info(
                output, resources.config_timestamp
            )
            preferred = False
            if hasattr(monitor, "preferred"):
                preferred = monitor.preferred
            elif hasattr(monitor, "num_preferred"):
                preferred = monitor.num_preferred
            if preferred:
                num_monitors += 1
    except Exception:
        # always setup at least one monitor
        return 1
    else:
        return num_monitors


NUM_MONITORS = get_num_monitors()
NUM_SCREENS = max(NUM_MONITORS, 1)
screens = [
    Screen(top=get_status_bar(True))  # is_main_screen=(screen_number == 0))
    for screen_number in range(NUM_SCREENS)
]
