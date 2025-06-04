# 🧤 Gloves Module – CyberRP Accessory Suite

The Gloves Module adds tactical and premium handwear with optional color variants, animation-ready structure, and a hybrid config design for immersive roleplay in FiveM.

---

## 🔧 Features

- **Three Variants**:  
  - `default` – Standard black gloves for general RP  
  - `tactical` – Camo-style gloves for law enforcement, military, or rugged roles  
  - `vipwhite` – Premium white gloves for elite or VIP characters  

- **Hybrid Config Support** – Easy-to-extend system under `Config.Gloves`  
- **Command Toggle** – `/glovemode` lets players choose glove variant  
- **Premium Restriction Ready** – Future support for role-based or permission-locked items  

---

## 🧩 Configuration Format

Stored in `config.lua` as a hybrid module under `Config.Gloves`.

```lua
Config.Gloves = {
  default = {
    drawable = 0,
    texture = 0,
    palette = 0,
    color = "black",
    premium = false
  },
  tactical = {
    drawable = 1,
    texture = 2,
    palette = 1,
    color = "camo",
    premium = false
  },
  vipwhite = {
    drawable = 5,
    texture = 4,
    palette = 0,
    color = "white",
    premium = true
  }
}

Config.Gloves.commandName = "glovemode"
```

---

## 💬 Command Example

```bash
/glovemode vipwhite
```

---

## 📁 File Structure

```
CyberRP-Scripts/
└── modules/
    └── gloves/
        ├── config.lua
        ├── client.lua
        └── README.md
```

---

Built with 🧠 and immersive attention to detail by CyberWolf001 / FⱯLE Network Solutions
