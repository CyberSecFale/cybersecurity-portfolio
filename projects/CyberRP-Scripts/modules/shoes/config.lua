-- config.lua for Shoes Module

Config = Config or {}

Config.Shoes = {
  classic = {
    drawable = 1,
    texture = 0,
    sound = "default"
  },
  redkicks = {
    drawable = 2,
    texture = 1,
    sound = "urban_step"
  },
  bluestride = {
    drawable = 3,
    texture = 0,
    sound = "squeak"
  },
  stealthstep = {
    drawable = 4,
    texture = 2,
    sound = "quiet"
  },
  flexpremium = {
    drawable = 5,
    texture = 3,
    sound = "premium_glide",
    premium = true
  }
}

-- fallback
Config.Shoes.default = Config.Shoes.classic
