hl.window_rule({ match = { title = "Picture-in-Picture" }, float = true })
hl.window_rule({ match = { title = "Close Firefox" }, float = true })
hl.window_rule({ match = { class = "org.Waytrogen.Waytrogen" }, float = true })
hl.window_rule({ match = { class = "org.gnome.Calculator" }, float = true })

hl.window_rule({
  name = "pavucontrol",
  match = {
    class = "org.pulseaudio.pavucontrol"
  },

  float = true,
  size = {"500", "652"},
  move = {"1090", "43"},
  stay_focused = true,
  border_size = 0
})

hl.window_rule({
  name = "nm-gui",
  match = {
    class = "com.network.manager"
  },

  float = true,
  size = {"332", "496"},
  move = {"1260", "44"},
  stay_focused = true,
  border_size = 1
})

hl.window_rule({
  name = "clipse-float",
  match = {
    class = "clipse"
  },

  float = true,
  size = {"622", "652"},
  stay_focused = true,
  border_size = 0
})

hl.window_rule({
  name = "kde-notification",
  match = {
    class = "org.kde.kdeconnect.daemon"
  },

  float = true,
  size = {"693", "235"},
  stay_focused = true,
  border_size = 0
})

hl.window_rule({
  name = "kde-handler",
  match = {
    class = "org.kde.kdeconnect.handler"
  },

  float = true,
  size = {"693", "235"},
  stay_focused = true,
  border_size = 0
})
