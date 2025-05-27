-- characters/coco/config.lua

Config.Pet = {
    name = "Coco",
    species = "Bully Pit",

    appearance = {
        model = "a_c_bullypit", -- Custom model preferred over default
        color = "brown_white",
        features = {
            earCrop = false,
            chainCollar = true
        }
    },

    behaviors = {
        idle = "WORLD_DOG_SITTING",
        walk = "WORLD_DOG_WALKING",
        guard = "AI_GUARD_OWNER",
        tricks = {
            sit = "DOG_SIT",
            bark = "DOG_BARK",
            lay = "DOG_LAY_DOWN",
            fetch = "DOG_FETCH",       -- New
            roll = "DOG_ROLL_OVER"     -- New
        }
    },

    relationship = {
        owner = "Lit' Loo",
        guardFamily = true
    },

    traits = {
        loyalty = 10,
        aggression = 7,
        obedience = 9
    },

    voicelines = {
        "Woof!",
        "Grrr...",
        "Good boy!",
        "Back up!",
        "Let's play!"
    }
}

