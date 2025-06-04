-- config.lua (Gloves Module)
Config = Config or {}

Config.Gloves = {
  default = {
    drawable = 0,
    texture = 0,
    palette = 0,
    color = "black",
    premium = false
  },
  tactical = {
    drawable = 3,
    texture = 2,
    palette = 1,
    color = "camo",
    premium = false
  },
  vipwhite = {
    drawable = 5,
    texture = 4,
    palette = 0,
    color = "white",
    premium = true
  }
}

Config.Gloves.commandName = "glovemode"
