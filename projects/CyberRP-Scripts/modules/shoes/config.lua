-- config.lua for Shoes Module (Hybrid Format)
Config = Config or {}

Config.Shoes = {
  default = {
    drawable = 0,
    texture = 0,
    sound = "default",
    walkStyle = "move_m@casual@a",
    palette = 0,
    premium = false
  },
  redkicks = {
    drawable = 1,
    texture = 0,
    sound = "urban_step",
    walkStyle = "move_m@swagger",
    palette = 0,
    premium = false
  },
  flexpremium = {
    drawable = 5,
    texture = 3,
    sound = "premium_glide",
    walkStyle = "move_m@hipster@a",
    palette = 0,
    premium = true
  }
}

-- Optional: expose default and premium unlock command logic if needed
Config.Shoes.commandName = "flexkicks"


