# 🥾 Shoes Module – CyberRP Accessory Suite

The Shoes Module adds customizable footwear with enhanced styling, walk animations, and optional premium features for immersive roleplay in FiveM.

---

## 🔧 Features

- **Three Variants**:  
  - `default` : Casual walk style, neutral look  
  - `redkicks` : Street-ready swagger walk with custom sound  
  - `flexpremium` : Premium shoes with hipster walk and glide sound  

- **Walk Style Integration** – Applies movement animations like `move_m@hipster@a`  
- **Footstep Audio** – Optional sound feedback when walking  
- **Premium Toggle** – `/flexkicks` command enables exclusive variants  

---

## 🧩 Configuration Format

Stored in `config.lua` as a hybrid module under `Config.Shoes`.

```lua
Config.Shoes = {
  redkicks = {
    drawable = 1,
    texture = 0,
    sound = "urban_step",
    walkStyle = "move_m@swagger",
    palette = 0,
    premium = false
  },
  flexpremium = {
    drawable = 5,
    texture = 3,
    sound = "premium_glide",
    walkStyle = "move_m@hipster@a",
    palette = 0,
    premium = true
  }
}
```

---

## 🧵 Command Example

```bash
/flexkicks redkicks
```

---

## 📁 File Structure

```plaintext
CyberRP-Scripts/
└── modules/
    └── shoes/
        ├── config.lua
        ├── client.lua
        └── README.md
```

---

Built with 🧠 and premium swagger by **CyberWolf001 / FⱯLE Network Solutions**

