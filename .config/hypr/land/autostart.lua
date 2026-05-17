
-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function ()
    hl.exec_cmd("rm ~/.config/hypr/land/toggleable_states/*")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("clipse -listen")
    hl.exec_cmd("~/.config/waybar/launch.sh")
    hl.exec_cmd("swaync")
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    hl.exec_cmd("/home/on/Scripts/hypr-dynamic-border.sh")
    hl.exec_cmd("kdeconnectd")
    hl.exec_cmd("power-daemon-mgr daemon")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("hypridle")
end)


