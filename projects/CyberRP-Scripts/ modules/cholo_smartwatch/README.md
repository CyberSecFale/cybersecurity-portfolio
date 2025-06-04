# ⌚ Cholo Smartwatch Module – CyberRP-Scripts

This FiveM module adds a stylish and immersive smartwatch system designed for the Cholo RP lifestyle. It includes homie tracking, vehicle locating, battery management, and a full Barrio Bites™ food delivery system offering tacos, tortas, burritos, and sides — all managed from your wrist.

## 🔧 Features

- 🕶️ Multiple watch models: El Jefe, Rosa Fuerte, Onyx Negro, Plata Pura, Cromo Limpio  
- 📡 Homie Locator: Scan the area for nearby gang members  
- 🚗 Vehicle Tracker: Locate your owned vehicle  
- 🌮 Food Delivery System: Order food from configurable in-game restaurants  
- 🔋 Battery Management: Includes drain rate, recharge, and usage per feature  
- 🧭 Smartwatch UI: Switchable themes like barrio, classic, bling, and minimal  
- 🎭 Immersive animations for watch usage and ordering food  

## 💻 Commands

| Command         | Function Description                             |
|-----------------|--------------------------------------------------|
| /equipwatch     | Equip a selected smartwatch model                |
| /findhomie      | Attempt to locate your nearby homies             |
| /findride       | Track the last-used owned vehicle                |
| /orderfood      | Order tacos, burritos, tortas via Barrio Bites   |
| /chargewatch    | Recharge the battery of your smartwatch          |

## 📦 Installation

1. Move the folder to:  
   /projects/CyberRP-Scripts/modules/cholo_smartwatch/

2. Make sure the fxmanifest.lua inside the folder includes all 3 scripts:  
   - config.lua  
   - cholo_smartwatch.lua  
   - client.lua

3. Add to your server.cfg or master resource manifest (if needed):  
   ensure cholo_smartwatch

4. Restart your FiveM resource.

## 📁 File Structure

cholo_smartwatch/  
├── README.md  
├── fxmanifest.lua  
├── config.lua  
├── cholo_smartwatch.lua  
└── client.lua  

## 🥑 Food Ordering Details

Service Name: Barrio Bites™  
Delivery Time: Random between 8–20 minutes  
Cooldown: 30 minutes per order  
Battery Usage: 5% per use  

Menu Sample:

Tacos:  
- Street Taco – $3  
- Carne Asada Taco – $5  
- Carnitas Taco – $4  
- Al Pastor Taco – $5  
- Lengua Taco – $6  
- Fish Taco – $7  

Burritos:  
- Bean & Cheese Burrito – $8  
- Carne Asada Burrito – $12  
- California Burrito – $14  
- Veggie Burrito – $10  

Tortas:  
- Milanesa Torta – $11  
- Cubana Torta – $13  
- Carnitas Torta – $12  

Sides:  
- Chips & Salsa – $3  
- Guacamole – $4  
- Refried Beans – $3  
- Mexican Rice – $3  

## 🔐 Permissions & Integration

- Fully client-side  
- Compatible with modular loadouts  
- Easily extendable with server sync or NUI menu support  

## ✍️ Credits

Developed by:  
BOBBY [Abbiu] FⱯLERO  
CyberWolf001 | FALE Network Solutions  
GitHub: https://github.com/CyberSecFale  

## 🧠 Future Plans

- Add NUI-based smartwatch interface  
- Add server sync battery drain per session  
- Expand to include GPS tagging, gang alerts, or premium models  

## 🧪 Example Config Path

This module references Config.Commands, Config.Features, Config.Notifications, and Config.Animations from:  
modules/cholo_smartwatch/cholo_smartwatch.lua  

You may externalize configs for use in multiple client-side features.

“Stay strapped. Stay smart. Stay fed.” — Barrio Bites™
