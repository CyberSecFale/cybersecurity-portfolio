-- config.lua for Coco Power Collar

Config = {

    -- Collar Settings
    Collar = {
        ModelsSupported = { "a_c_chop", "a_c_rottweiler", "a_c_husky" },
        BaseScale = 1.0,
        PowerScale = 1.15,
        TransitionSpeed = 0.5,
        CollarPropIndex = 2,
        CollarTexture = 1
    },

    -- Sound Effects
    Sounds = {
        Growl = {
            Name = "DOG_GROWL",
            Dict = "ANIMALS_SOUNDS",
            Volume = 0.8,
            Pitch = 0.95
        },
        PowerUp = {
            Name = "Power_Up",
            Dict = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
            Volume = 0.6,
            Pitch = 1.0
        },
        PowerDown = {
            Name = "Power_Down",
            Dict = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS",
            Volume = 0.6,
            Pitch = 0.9
        }
    },

    -- Animation Settings
    Animations = {
        PowerUp = {
            Dict = "creatures@rottweiler@amb@world_dog_sitting@base",
            Name = "base",
            BlendInSpeed = 4.0,
            BlendOutSpeed = 4.0,
            Duration = 1500,
            Flag = 2
        },
        PowerIdle = {
            Dict = "creatures@rottweiler@amb@world_dog_barking@idle_a",
            Name = "idle_a",
            BlendInSpeed = 8.0,
            BlendOutSpeed = 8.0,
            Flag = 1
        },
        PowerDown = {
            Dict = "creatures@rottweiler@amb@world_dog_sitting@exit",
            Name = "exit",
            BlendInSpeed = 4.0,
            BlendOutSpeed = 4.0,
            Duration = 1500,
            Flag = 2
        }
    },

    -- Visual Effects
    Effects = {
        EnableParticles = true,
        ParticleName = "scr_indep_firework_starburst",
        ParticleDict = "scr_indep_fireworks",
        ParticleScale = 0.5,
        ParticleDuration = 500
    },

    -- Command Settings
    Commands = {
        TogglePower = "cocopower",
        EquipCollar = "cococollar"
    },

    -- Debug
    Debug = false
}
