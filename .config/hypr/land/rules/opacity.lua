hl.window_rule({
  name = "apply-something",
  match = {
    class = "my-window"
  },
  border_size = 10
})


-- Opacity Levels for Kitty
hl.window_rule({ match = { focus = false, class = "kitty" },               opacity = 0.79 })
hl.window_rule({ match = { focus = false, class = "kitty" },               opacity = 0.85 })
hl.window_rule({ match = { fullscreen = true, class = "kitty" }, 	   opacity = 0.80 })
hl.window_rule({ match = { workspace = "w[tv1]s[false]", class = "kitty"}, opacity = 0.80 })

-- No Borders for Lone Window
hl.window_rule({ match = { workspace = "w[tv1]s[false]"}, border_size = 0 })


