-- config.lua (Backpacks Module)
Config = Config or {}

Config.Backpacks = {
  default = {
    drawable = 0,
    texture = 0,
    size = "standard",
    color = "black",
    palette = 0,
    premium = false
  },
  tactical = {
    drawable = 3,
    texture = 1,
    size = "large",
    color = "camo",
    palette = 1,
    premium = false
  },
  elitecarry = {
    drawable = 5,
    texture = 4,
    size = "stealth",
    color = "midnight",
    palette = 0,
    premium = true
  }
}

Config.Backpacks.commandName = "carrypack"
