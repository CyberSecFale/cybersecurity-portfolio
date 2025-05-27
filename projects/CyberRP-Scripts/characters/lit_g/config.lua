-- characters/lit_g/config.lua

Config = {}

Config.Character = {
    name = "Lit' G",
    style = "Vintage Gangster",
    occupation = "Underground Hustler",

    outfit = {
        hat = {componentId = 0, drawableId = 4, textureId = 0, description = "Black Fedora"},
        glasses = {componentId = 1, drawableId = 2, textureId = 0, description = "Black Sunglasses"},
        coat = {componentId = 11, drawableId = 28, textureId = 0, description = "Gray Long Coat"},
        shirt = {componentId = 8, drawableId = 12, textureId = 0, description = "White Dress Shirt"},
        tie = {componentId = 7, drawableId = 3, textureId = 0, description = "Black Bow Tie"},
        pants = {componentId = 4, drawableId = 24, textureId = 0, description = "Black Dress Pants"},
        shoes = {componentId = 6, drawableId = 10, textureId = 0, description = "Black Leather Shoes"},
        accessories = {
            chain = {componentId = 7, drawableId = 1, textureId = 0, description = "Cross Necklace"},
            belt = {componentId = 9, drawableId = 5, textureId = 0, description = "Designer Belt"}
        }
    },

    physical = {
        walkStyle = "move_m@gangster@ng",
        posture = "confident",
        faceFeatures = {
            eyeColor = 0,
            facialHair = {style = 0, opacity = 0.5},
            eyebrows = {style = 2, opacity = 1.0},
            age = 0.1
        }
    },

   vehicle = {
    model = "tornado", -- Base model to modify into a '56 Cadillac Fleetwood
    customName = "1956 Cadillac Fleetwood",
    color = {0, 0, 0}, -- Black
    secondaryColor = {240, 200, 80}, -- Gold trim
    plate = "LIT G",
    mods = {
        wheels = 1, -- Classic whitewalls
        windowTint = 1,
        livery = 0,
        neonColor = {255, 215, 0}, -- Gold neon
        xenonColor = 7,
        interior = 1,
        customParts = {
            hydraulics = true,
            chrome = {bumpers = true, trim = true, grill = true},
            customRoof = "lowered",
            suspension = "lowrider"
        }
    },

    locations = {
        primary = {x = 344.42, y = -212.25, z = 58.02, heading = 162.0},
        alternate = {
            {name = "casino", x = 926.12, y = 48.76, z = 81.10},
            {name = "club", x = -1569.42, y = -3017.15, z = -74.41},
            {name = "mansion", x = -1456.71, y = -32.72, z = 54.56}
        }
    }
  }

    animations = {
        idle = "WORLD_HUMAN_SMOKING",
        greeting = "WORLD_HUMAN_MOBILE_FILM_SHOCKING",
        intimidate = "WORLD_HUMAN_STAND_IMPATIENT",
        celebration = "WORLD_HUMAN_DRINKING"
    },

    dialogues = {
        greeting = {
            "Silent nod is all you deserve... for now.",
            "Business or pleasure? Choose wisely.",
            "Ain't no game when Lit' G's involved."
        },
        business = {
            "I deal in solutions, not problems.",
            "This arrangement stays between us.",
            "Time is money, and I don't waste either."
        }
    },

    relationships = {
        luis = "cousin",
        lola = "cousin-in-law",
        lit_loo = "young blood",
        coco = "even the dog respects me"
    }
}
