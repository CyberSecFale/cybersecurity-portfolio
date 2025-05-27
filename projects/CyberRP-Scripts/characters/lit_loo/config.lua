-- characters/lit_loo/config.lua

Config = {}

Config.Character = {
  name = "Lit' Loo",
  style = "Young Gangster",
  occupation = "Street Hustler",

  outfit = {
    head = {componentId = 0, drawableId = 0, textureId = 0},
    mask = {componentId = 1, drawableId = 0, textureId = 0},
    hair = {componentId = 2, drawableId = 15, textureId = 0},
    torso = {componentId = 3, drawableId = 5, textureId = 0},
    jacket = {componentId = 11, drawableId = 0, textureId = 0},
    undershirt = {componentId = 8, drawableId = 15, textureId = 2, description = "Dark Tank Top"},
    accessories = {componentId = 7, drawableId = 0, textureId = 0},
    decals = {componentId = 10, drawableId = 0, textureId = 0},
    pants = {componentId = 4, drawableId = 8, textureId = 0, description = "Khaki Chinos"},
    shoes = {componentId = 6, drawableId = 7, textureId = 0, description = "Red/White Sneakers"},
    props = {
      hat = {componentId = 0, drawableId = 58, textureId = 0, description = "White Headband"},
      glasses = {componentId = 1, drawableId = 0, textureId = 0},
      ears = {componentId = 2, drawableId = 0, textureId = 0},
      watch = {componentId = 6, drawableId = 3, textureId = 0}
    }
  },

  physical = {
    walkStyle = "move_m@gangster@",
    posture = "relaxed_slouched",
    faceFeatures = {
      eyeColor = 0,
      facialHair = {style = 0, opacity = 0.0},
      eyebrows = {style = 3, opacity = 1.0},
      age = 0.0
    }
  },

  animations = {
    idle = "WORLD_HUMAN_HANG_OUT_STREET",
    greeting = "mp_player_int_lean_y",
    pet = "WORLD_HUMAN_PET_DOG",
    angry = "missfbi3_party_d"
  },

  dialogues = {
    greeting = {
      "Sup? Me and Coco just chillin'.",
      "You looking for my pops or what?",
      "Hey, watch yourself around here."
    },
    attitude = {
      "I'm young but I ain't dumb, know what I'm sayin'?",
      "Family above everything - that's how we live.",
      "Coco don't like strangers getting too close."
    },
    about_dog = {
      "Coco's my ride or die, ain't that right boy?",
      "This dog's smarter than most people I know.",
      "Nobody messes with me when I got Coco."
    }
  },

  relationships = {
    luis = "father",
    lola = "mother",
    coco = "pet",
    lit_g = "cousin"
  },

  petCommands = {
    "sit", "heel", "guard", "attack", "follow"
  }
}
