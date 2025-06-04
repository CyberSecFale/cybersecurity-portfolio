# CyberRP-Scripts: La Familia RP Character Pack

A FiveM-ready collection of Lua character configs for realistic, street-rooted roleplay.

---

## 🔹 Included Characters

- **Lola** – Fierce matriarch in flannel with sharp wit and heavy loyalty.  
- **Luis** – The muscle, proud husband, Impala driver.  
- **Lit’ Loo** – The next-gen hustler with a loyal dog and an old soul.  
- **Lit’ G** – The vintage cousin, smooth and deadly.  
- **Coco** – The bully-pit protector, trained and fierce.

---

## 🛠️ How to Use

1. **Drop** each `config.lua` file into your RP server’s Lua structure.
2. **Connect** spawn commands and animations using `client.lua`.
3. **Customize** any part to match your server’s needs or family dynamics.

---

## 🧩 Modular Outfit System

Each character uses a modular visual setup powered by `apply_outfit.lua`:

- 🎩 Assign hats, glasses, watches, chains, shoes, etc.  
- 🚶 Add walk styles like `move_m@confident`, `move_m@gangster`, etc.  
- 😎 Add facial expressions such as `mood_happy_1`, `mood_angry_1`, etc.  
- 💾 Save/load outfits via the built-in KVP storage system.

➡️ Use `characters/lit_g/config.lua` as a base template to create more NPCs.

---

## 💻 Developer Example

```lua
local ped = PlayerPedId()
local outfit = require('characters.lit_g.config')
ApplyOutfit(ped, outfit)

-- Optional save function
SaveCurrentOutfit("litg_backup")

---

🎯 Purpose
This project is built for:

🎭 Creating deeper RP character families

🧠 Teaching modular Lua scripting through themed NPCs

🌐 Building a personal GitHub showcase with style and storytelling

---

CyberRP-Scripts/
├── characters/
│   ├── lola/
│   ├── luis/
│   ├── lit_loo/
│   ├── lit_g/
│   └── coco/
├── client/
├── apply_outfit.lua
├── config.lua
├── fxmanifest.lua
├── LICENSE
└── README.md


---

📄 License
This project is licensed under the MIT License.
You are free to use, modify, and redistribute with credit to:

BOBBY [Abbiu] FⱯLERO
GitHub: CyberSecFale

---


