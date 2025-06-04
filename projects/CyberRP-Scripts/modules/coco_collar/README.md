# 🐾 Coco Power Collar Module – CyberRP Companion Enhancement

The Coco Power Collar module adds an interactive, animated, and sound-powered collar system for canine companions (Chop, Husky, Rottweiler) in FiveM. Players can equip the collar and toggle its powered state to trigger smooth scale transitions, custom animations, sound effects, and particle bursts—delivering superhero, tactical, or elite RP energy to your server.

---

## 🔧 Features

- **Model Restriction** – Only usable by Chop, Husky, or Rottweiler models
- **Two Custom Commands** – `/cococollar` to equip, `/cocopower` to toggle
- **Animated Transformations** – Scale up/down, bark, and idle sequences
- **Sound Effects** – Growl, power-up, and power-down
- **Particle Effects** – Firework burst FX on activation (optional)
- **Config-Driven** – Modular design via `config.lua` for easy expansion
- **Debug Mode** – Developer console output when enabled

---

## 🧩 Configuration Format

```lua
Config = {
    Collar = {
        ModelsSupported = {"a_c_chop", "a_c_husky", "a_c_rottweiler"},
        BaseScale = 1.0,
        PowerScale = 1.15,
        TransitionSpeed = 0.5,
        CollarPropIndex = 2,
        CollarTexture = 1
    },
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
    Effects = {
        EnableParticles = true,
        ParticleName = "scr_indep_firework_starburst",
        ParticleDict = "scr_indep_fireworks",
        ParticleScale = 0.5,
        ParticleDuration = 500
    },
    Commands = {
        TogglePower = "cocopower",
        EquipCollar = "cococollar"
    },
    Debug = false
}
```

---

## 💬 Command Examples

```bash
/cococollar
/cocopower
```

---

## 📁 File Structure

```
CyberRP-Scripts/
└── modules/
    └── coco_collar/
        ├── config.lua
        ├── client.lua
        └── README.md
```

---

Built with 🐺 heart, spark, and creative RP tech by CyberWolf001 / FⱯLE Network Solutions
