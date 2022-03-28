#
#    ▄████  ▄▄▄       ▄▄▄▄   ▓█████ ██▓   
# ▒ ██▒ ▀█▒▒████▄    ▓█████▄ ▓█   ▀▓██▒   
# ░▒██░▄▄▄░▒██  ▀█▄  ▒██▒ ▄██▒███  ▒██░   
# ░░▓█  ██▓░██▄▄▄▄██ ▒██░█▀  ▒▓█  ▄▒██░   
# ░▒▓███▀▒░ ▓█   ▓██▒░▓█  ▀█▓░▒████░██████    Qtile config by Gabriel (Gabel) [github.com/gabellstapler]
#  ░▒   ▒   ▒▒   ▓▒█░░▒▓███▀▒░░ ▒░ ░ ▒░▓  
#   ░   ░    ░   ▒▒ ░▒░▒   ░  ░ ░  ░ ░ ▒  
# ░ ░   ░ ░  ░   ▒    ░    ░    ░    ░ ░  
#       ░        ░  ░ ░         ░      ░  
#
# Copyright (c) 2010 Aldo Cortesi
# Copyright (c) 2010, 2014 dequis
# Copyright (c) 2012 Randall Ma
# Copyright (c) 2012-2014 Tycho Andersen
# Copyright (c) 2012 Craig Barnes
# Copyright (c) 2013 horsik
# Copyright (c) 2013 Tao Sauvage
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy

mod = "mod4"
terminal = "kitty" 

keys = [

    # Keys for MonadTall
    Key([mod, "shift"], "h", lazy.layout.swap_left()),
    Key([mod, "shift"], "l", lazy.layout.swap_right()),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down()),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up()),
    Key([mod], "m", lazy.layout.grow()),
    Key([mod], "n", lazy.layout.shrink()),
    Key([mod, "shift"], "m", lazy.layout.grow_main()),
    Key([mod, "shift"], "n", lazy.layout.shrink_main()),
    Key([mod], "i", lazy.layout.normalize()),
    Key([mod, "shift"], "i", lazy.layout.reset()),
    Key([mod], "o", lazy.layout.maximize()),
    Key([mod, "shift"], "space", lazy.layout.flip()),

    # General settings

    # Switch between windows
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key([mod], "r", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),
]

groups = [
        Group(""),
        Group(""),
        Group(""),
        Group(""),
        Group(""),
        Group("")
        ]

for k, group in zip(["1", "2", "3", "4", "5", "6"], groups):
    keys.append(Key([mod], k, lazy.group[group.name].toscreen()))
    keys.append(Key([mod, "shift"], k, lazy.window.togroup(group.name)))

def init_layout_theme():
    return {
            "border_focus": '#81a1c1',
            "border_normal": '#4c566a',
            "border_width": 1,
            "margin": 4
            }

layout_theme = init_layout_theme()

layouts = [
    layout.MonadTall(
        **layout_theme,
        align = 0,
        change_size = 20,
        max_ratio = 0.75,
        min_ratio = 0.3,
        min_secondary_size = 95,
        new_client_position = 'after_current',
        ratio = 0.6,
        single_border_width = 1,
        single_margin = 4
        ),
    layout.Max(),
]

widget_defaults = dict(
    font="Segoe UI",
    fontsize=15,
    padding=3,
)
extension_defaults = widget_defaults.copy()

#Colors for the bar
def init_colors():
    return [["#2e3440", "#2e3440"], # color 0  dark grayish blue
            ["#3b4252", "#3b4252"], # color 1  very dark grayish blue
            ["#434c5e", "#434c5e"], # color 2  very dark grayish blue
            ["#4c566a", "#4c566a"], # color 3  very dark grayish blue
            ["#d8dee9", "#d8dee9"], # color 4  grayish blue
            ["#e5e9f0", "#e5e9f0"], # color 5  light grayish blue
            ["#eceff4", "#eceff4"], # color 6  light grayish blue
            ["#8fbcbb", "#8fbcbb"], # color 7  grayish cyan
            ["#88c0d0", "#88c0d0"], # color 8  desaturated cyan
            ["#81a1c1", "#81a1c1"], # color 9  desaturated blue
            ["#5e81ac", "#5e81ac"], # color 10 dark moderate blue
            ["#bf616a", "#bf616a"], # color 11 slightly desaturated red
            ["#d08770", "#d08770"], # color 12 desaturated red
            ["#ebcb8b", "#ebcb8b"], # color 13 soft orange
            ["#a3be8c", "#a3be8c"], # color 14 desaturated green
            ["#b48ead", "#b48ead"]] # color 15 grayish magenta

colors = init_colors()

def init_bar_config():
    return {
        "background": colors[0],
        "border_color": colors[10],
        "border_width": 1,
        "margin": 4
        }

bar_config = init_bar_config()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(
                    active = colors[10],
                    block_highlight_text_color = colors[4], 
                    font = 'JetBrainsMono:style=Bold',
                    fontsize = 18,
                    highlight_color = ['#2e3440', '#2e3440'],
                    highlight_method = 'line',
                    inactive = colors[3],
                    other_current_screen_border = colors[0],
                    other_screen_border = colors[0],
                    this_current_screen_border = colors[4],
                    this_screen_border = colors[10]
                    ),
                widget.Prompt(),
                widget.Chord(
                    chords_colors={
                        "launch": ("#ff0000", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
                widget.Sep(
                    linewidth = 1700,
                    foreground = colors[0]
                    ),
                widget.Clock(
                    format = "%H:%M",
                    padding = 6
                    ),

            ],
            25,
            **bar_config 
        ),
    ),
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(
                    active = colors[10],
                    block_highlight_text_color = colors[4], 
                    font = 'JetBrainsMono:style=Bold',
                    fontsize = 18,
                    highlight_color = ['#2e3440', '#2e3440'],
                    highlight_method = 'line',
                    inactive = colors[3],
                    other_current_screen_border = colors[0],
                    other_screen_border = colors[0],
                    this_current_screen_border = colors[4],
                    this_screen_border = colors[10]
                    ),
                widget.Prompt(),
                widget.Chord(
                    chords_colors={
                        "launch": ("#ff0000", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
                widget.Sep(
                    linewidth = 1700,
                    foreground = colors[0]
                    ),
                widget.Clock(
                    format = "%H:%M",
                    padding = 6
                    ),

            ],
            25,
            **bar_config 
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ]
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# When using the Wayland backend, this can be used to configure input devices.
wl_input_rules = None

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
