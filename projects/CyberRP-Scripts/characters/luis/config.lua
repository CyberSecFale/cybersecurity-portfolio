### 2. Luis (Man in tank top)
lua
-- characters/luis/config.lua
Config.Character = {
    name = "Luis",
    style = "Chicano",
    outfit = {
        head = {componentId = 0, drawableId = 0, textureId = 0},
        mask = {componentId = 1, drawableId = 0, textureId = 0}, -- No mask
        hair = {componentId = 2, drawableId = 18, textureId = 0}, -- Short dark hair
        torso = {componentId = 3, drawableId = 6, textureId = 0}, -- Arms visible with tattoos
        jacket = {componentId = 11, drawableId = 0, textureId = 0}, -- No jacket
        undershirt = {componentId = 8, drawableId = 15, textureId = 0, description = "Gray Tank Top"},
        accessories = {componentId = 7, drawableId = 0, textureId = 0}, -- No accessories
        decals = {componentId = 10, drawableId = 0, textureId = 0}, -- No decals
        pants = {componentId = 4, drawableId = 5, textureId = 0, description = "Dark Jeans"},
        props = {
            hat = {componentId = 0, drawableId = 2, textureId = 0, description = "Bandana"},
           glasses = {componentId = 1, drawableId = 0, textureId = 0}
    },
    animations = {
        idle = "WORLD_HUMAN_MUSCLE_FLEX",
        walk = "move_m@gangster@ng"
    },
    dialogues = {
        greeting = {"What's good, ese?", "You need something, homie?"},
        family = {"Lola and Lit’ Loo are my world.", "Don’t ever cross the familia."}
    },
    relationships = {
        lola = "wife",
        lit_loo = "son",
        coco = "dog"
    }
}


