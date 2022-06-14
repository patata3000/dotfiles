from libqtile import layout
from libqtile.config import Match

layouts = [
    layout.Max(),
    # layout.Stack(num_stacks=2),
    # Try more layouts by unleashing below layouts.
    # layout.Bsp(),
    layout.Columns(margin=3, border_focus="#FFFFFF"),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]


floating_layout = layout.Floating(
    float_rules=[
        # *layout.Floating.default_float_rules,
        # Run the utility of `xprop` to see the wm class and name of an X client.
        Match(wm_class="blueberry.py"),
        Match(wm_class="branchdialog"),  # gitk
        Match(wm_class="confirm"),
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="dialog"),
        Match(wm_class="download"),
        Match(wm_class="error"),
        Match(wm_class="file_progress"),
        Match(wm_class="gscreenshot"),
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="nm-applet"),
        Match(wm_class="notification"),
        Match(wm_class="optimus-manager-qt"),
        Match(wm_class="pinentry"),
        Match(wm_class="pinentry-gtk-2"),  # GPG key password entry
        Match(wm_class="qutebrowser", title="Open"),
        Match(wm_class="shutter"),
        Match(wm_class="soffice"),
        Match(wm_class="splash"),
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(wm_class="toolbar"),
        Match(wm_class="wally"),
        Match(wm_class="zenity"),
        Match(wm_class="pinentrygnome3"),
        # Match(wm_class="microsoft teams - preview"),  # ssh-askpass
    ]
)
