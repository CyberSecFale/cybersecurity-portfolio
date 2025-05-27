-- vehicles/impala_lowrider/config.lua

Config = {}

Config.Vehicle = {
  model = "impala64", -- Confirm this name matches your vehicle model
  name = "Luis's Impala",
  type = "lowrider",

  appearance = {
    primaryColor = {161, 75, 0},
    secondaryColor = {161, 75, 0},
    pearlColor = {224, 0, 0},
    wheelColor = {156, 156, 156},

    pinstripes = {
      enabled = true,
      pattern = "tribal",
      color = {255, 255, 255}
    },

    neonEnabled = {left = true, right = true, front = true, back = true},
    neonColor = {0, 100, 255},
    windowTint = 1
  },

  performance = {
    engine = 3,
    brakes = 2,
    transmission = 2,
    suspension = 3,
    hydraulics = {
      enabled = true,
      frontHeight = 0.2,
      rearHeight = 0.2,
      controlMode = "advanced"
    }
  },

  wheels = {
    type = 1,
    index = 13,
    isBulletproof = true,
    spokesStyle = "wire",
    tireDesign = "whitewalls",
    accessories = {
      spinners = true
    }
  },

  plate = {
    text = "LUIS64",
    type = 1,
    style = "lowrider"
  },

  sounds = {
    engineSound = "muscle",
    hornSound = "musical",
    radioStation = "RADIO_16_SILVERLAKE"
  }
}
