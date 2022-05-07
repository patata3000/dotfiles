"""Holds hooks for qtile."""
import os
import subprocess


from libqtile import hook


HOMEDIR = os.path.expanduser("~")
SCRIPTS_DIR = os.path.join(HOMEDIR, ".config/qtile/scripts")


@hook.subscribe.startup_once
def autostart_once():
    # TODO call notify send
    subprocess.Popen(os.path.join(SCRIPTS_DIR, "autostart_once.sh"))


@hook.subscribe.startup_complete
def autostart_complete():
    # TODO call notify send
    subprocess.Popen(os.path.join(SCRIPTS_DIR, "autostart_complete.sh"))


@hook.subscribe.startup
def autostart():
    # TODO call notify send
    subprocess.Popen(os.path.join(SCRIPTS_DIR, "autostart.sh"))


# THIS IS NOT WORKING. No idea why...
@hook.subscribe.screen_change
def restart_on_randr(qtile, ev):
    subprocess.Popen(["notify-send", "toto"])
    qtile.cmd_restart()
