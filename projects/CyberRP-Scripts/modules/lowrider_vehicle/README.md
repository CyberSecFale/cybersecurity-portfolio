# 🚘 Lowrider Vehicle Integration Module – FiveM Enhanced Edition

Bring the streets alive with this immersive lowrider experience crafted for roleplay servers and custom mod communities. This FiveM module lets players spawn a futuristic lowrider, engage hydraulic lifts, toggle neon lighting, and summon their ride through a smartwatch-style menu. Built with customization, style, and future expansion in mind, this module is part of the modular **CyberRP-Scripts** system.

---

## 🔧 Features

- 🛠️ Spawnable Custom Lowrider Vehicle
- 🔼 Hydraulics Controls – Front hop, rear hop, all-wheels lift/drop
- 🌈 Neon Light Toggle – Custom color + on/off switch
- 📱 Smartwatch Integration – Summon vehicle, trigger light modes
- 🧠 Vehicle Suspension Memory – Persistent style control
- 🧩 Modular Ready – Easily extend with UI, sounds, or accessories

---

## ⚙️ Configuration Format

```lua
-- Configuration Constants
local LOWRIDER_MODEL_NAME = 'LOWRIDER'            -- Vehicle spawn name
local LOWRIDER_DISPLAY_NAME = 'Futuristic Lowrider' -- Label shown in menu/text
local NEON_TOGGLE_KEY = 74                        -- H Key
local FRONT_HOP_KEY = 51                          -- E Key
local REAR_HOP_KEY = 52                           -- Q Key
local ALL_WHEELS_UP_KEY = 73                      -- G Key
local ALL_WHEELS_DOWN_KEY = 75                    -- J Key
local SMARTWATCH_KEY = 56                         -- M Key

-- Suspension memory table for per-vehicle tuning
local lowriderStates = {
  [vehicle] = {
    frontHeight = 0.0,
    rearHeight = 0.0,
    leftHeight  = 0.0,
    rightHeight = 0.0
  }
}
```

---

## 🕹️ Command Examples

```bash
/spawnlowrider         # Spawns the custom lowrider model
/smartwatch            # Opens the in-game smartwatch (requires NUI integration)
# Triggered via NUI or external scripts:
TriggerEvent('smartwatch:summonLowrider')
TriggerEvent('smartwatch:setLowriderLightMode', 'pulse')
TriggerEvent('smartwatch:setLowriderLightMode', 'solid')
```

---

## 📁 File Structure

```
CyberRP-Scripts/
└── modules/
    └── lowrider_vehicle/
        ├── README.md
        ├── fxmanifest.lua
        └── client.lua
```

---

## 🪪 License

This project is licensed under the MIT License. See `LICENSE.md` for full terms.

---

### 🧠 Author

**BOBBY [Abbiu] FⱯLERO**  
Cybersecurity & RP Engineer  
Founder of FⱯLE Network Solutions  
GitHub: [CyberSecFale](https://github.com/CyberSecFale)  
Web: [FaleNetwork.com](https://falenetwork.com)

---

### 🧰 Built with 💻, 🎮, and ❤️  
Powered by FALE Network Solutions and the immersive vision of CyberRP.
