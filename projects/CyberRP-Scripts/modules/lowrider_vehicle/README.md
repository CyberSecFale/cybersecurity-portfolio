# 🚘 Lowrider Vehicle Integration Module

An enhanced Lua script designed for immersive FiveM roleplay, enabling players to spawn a futuristic lowrider, control hydraulics, toggle neon lighting, and summon their ride using a custom smartwatch menu.

---

## 🔧 Features

- ✅ Spawn a custom lowrider model
- 🔼 Hydraulics control (front hop, rear hop, all wheels up/down)
- 🌈 Neon light toggle with customizable color
- 📱 Smartwatch integration (summon lowrider, change light mode)
- 🧠 Vehicle state memory (suspension settings)
- ⚙️ Ready for NUI and UI expansion

---

## 🧩 Configuration

Edit these in `client.lua` if needed:

```lua
local LOWRIDER_MODEL_NAME = 'LOWRIDER'
local LOWRIDER_DISPLAY_NAME = 'Futuristic Lowrider'
local NEON_TOGGLE_KEY = 74 -- H
local FRONT_HOP_KEY = 51 -- E
local REAR_HOP_KEY = 52 -- Q
local ALL_WHEELS_UP_KEY = 73 -- G
local ALL_WHEELS_DOWN_KEY = 75 -- J
local SMARTWATCH_KEY = 56 -- M
