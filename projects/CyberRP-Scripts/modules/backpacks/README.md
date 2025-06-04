# 🧥 Jacket Module – CyberRP Accessory Suite

The Jacket Module enables players to toggle between various jacket styles with optional weather-based logic or premium access tiers. Designed to enrich roleplay with visual cues, protection aesthetics, and immersive toggles in FiveM environments.

---

## 🔧 Features

- **Three Variants**:  
  - `default` – Lightweight civilian jacket  
  - `weatherproof` – Heavy-duty coat for cold or rainy environments  
  - `executive` – Premium tailored jacket for business or elite characters  

- **Modular Config Design** – All styles defined in `Config.Jackets`  
- **Command Integration** – Players toggle with `/jackettoggle`  
- **Premium Support** – Mark jackets as premium for VIP roles or donations  
- **Weather RP Friendly** – Config allows logic expansion based on in-game climate  

---

## 🧩 Configuration Format

Stored in `config.lua` under `Config.Jackets`.

```lua
Config = Config or {}

Config.Jackets = {
  default = {
    drawable = 3,
    texture = 0,
    palette = 0,
    label = "Standard Jacket",
    premium = false
  },
  weatherproof = {
    drawable = 6,
    texture = 2,
    palette = 1,
    label = "Weatherproof Coat",
    premium = false
  },
  executive = {
    drawable = 10,
    texture = 4,
    palette = 0,
    label = "Executive Wear",
    premium = true
  }
}

Config.Jackets.commandName = "jackettoggle"
```

---

## 💬 Command Example

```bash
/jackettoggle executive
```

---

## 📁 File Structure

```
CyberRP-Scripts/
└── modules/
    └── jackets/
        ├── config.lua
        ├── client.lua
        └── README.md
```

---

Built with 🧠, RP logic, and style by CyberWolf001 / FⱯLE Network Solutions
