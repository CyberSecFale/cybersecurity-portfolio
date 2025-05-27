### 1. Lola (Woman with red bandana)
lua
-- characters/lola/config.lua
Config.Character = {
    name = "Lola",
    style = "Chicana",
    outfit = {
        head = {componentId = 0, drawableId = 0, textureId = 0},
        mask = {componentId = 1, drawableId = 0, textureId = 0}, -- No mask
        hair = {componentId = 2, drawableId = 14, textureId = 0}, -- Long dark hair
        torso = {componentId = 3, drawableId = 14, textureId = 0}, -- Arms for tank top
        jacket = {componentId = 11, drawableId = 36, textureId = 0, description = "Black/White Flannel"},
        undershirt = {componentId = 8, drawableId = 2, textureId = 0, description = "Black Tank Top"},
        accessories = {componentId = 7, drawableId = 0, textureId = 0}, -- No accessories
        decals = {componentId = 10, drawableId = 0, textureId = 0}, -- No decals
        pants = {componentId = 4, drawableId = 6, textureId = 0, description = "Khaki Chinos"},
        props = {
            hat = {componentId = 0, drawableId = 58, textureId = 1, description = "Red Bandana"},
            glasses = {componentId = 1, drawableId = 0, textureId = 0}, -- No glasses
            ears = {componentId = 2, drawableId = 4, textureId = 0, description = "Large Hoops"}
        }
    },
    animations = {
        idle = "WORLD_HUMAN_STAND_IMPATIENT",
        walk = "move_f@tough_girl@"
    },
    dialogues = {
        greeting = {"Qué pasa?", "What's good?"},
        attitude = {"Don't mess with my family, got it?", "I run things around here, understand?"}
    },
    relationships = {
        luis = "husband",
        lit_loo = "son",
        coco = "pet"
    }
}
