"""Holds config for qtile status bar."""
from libqtile import bar, widget
from libqtile.bar import Bar


def color_gen(colors):
    idx = 0
    while True:
        yield colors[idx % len(colors)]
        idx += 1


class ColorGenerator:
    def __init__(self, *colors):
        self.colors = colors

    def __enter__(self):
        self.color_gen = color_gen(self.colors)
        return self

    def __exit__(self, type_, value, traceback):
        self.color_gen.close()

    def __call__(self, use_previous_col=False):
        if not use_previous_col:
            self.previous_col = next(self.color_gen)
        return self.previous_col


def get_status_bar(is_main_screen=False):
    with ColorGenerator("#111133", "#111177") as col_gen:
        list_widgets = [
            widget.WindowName(
                background=col_gen(),
                foreground="ffffff",
                format="{state}{name}",
                padding=14,
            ),
            widget.CurrentLayout(background=col_gen(), fmt="Layout: {}"),
            widget.GroupBox(
                background=col_gen(), padding=5, highlight_method="block"
            ),
            # widget.Chord(
            #     # chords_colors=("#880000", "#000088"),
            #     fmt="lalala{}",
            #     background="880000",
            #     chords_colors={
            #         "launch": ("#ff0000", "#ffffff"),
            #     },
            #     name_transform=lambda name: name.upper(),
            # ),
            # widget.Wlan(interface="wlo1", background=col_gen(), fmt="{}"),
            widget.Battery(
                format="%s " % b"\xF0\x9F\x94\x8B".decode("utf-8", "strict")
                + "{char} {percent:2.0%} {hour:d}h{min:02d}",
                low_background="993333",
                low_foreground="FFFFFF",
                low_percentage=0.1,
                update_interval=10,
                background=col_gen(),
            ),
            widget.PulseVolume(
                fmt="%s {}" % b"\xF0\x9F\x94\x8A".decode("utf-8", "strict"),
                background=col_gen(),
            ),
            widget.Backlight(
                background=col_gen(),
                brightness_file="/sys/class/backlight/intel_backlight/actual_brightness",
                max_brightness_file="/sys/class/backlight/intel_backlight/max_brightness",
                fmt="%s {}" % b"\xE2\x98\x80".decode("utf-8", "strict"),
                padding=8,
                font="noto-fonts-emoji",
            ),
            widget.CPUGraph(
                background=col_gen(),
                width=40,
                line_width=1,
                samples=20,
                border_color="996666",
                border_width=1,
                margin_x=0,
                margin_y=2,
                graph_color="996666",
                fill_color="669999",
            ),
            widget.Clock(
                format="%Y-%m-%d %a %I:%M %p",
                background=col_gen(),
            ),
            # widget.QuickExit(background="459834"),
        ]
        if is_main_screen:
            list_widgets.append(
                widget.Systray(background="#669999", padding=5, icon_size=20)
            )
        return Bar(
            list_widgets,
            25,
        )


widget_defaults = dict(
    font="SauceCodePro bold",
    fontsize=12,
    padding=8,
)
extension_defaults = widget_defaults.copy()
