-- cholo_smartwatch.lua

local Config = {
    Watches = {
        {
            name = "El Jefe",
            description = "Gold plated luxury with diamond accents",
            color = "gold",
            material = "gold_plated",
            value = 5000,
            texture = 0,
            drawable = 12
        },
        {
            name = "Rosa Fuerte",
            description = "Rose gold with black leather strap",
            color = "rose_gold",
            material = "polished_rose_gold",
            value = 4500,
            texture = 1,
            drawable = 12
        },
        {
            name = "Onyx Negro",
            description = "Black onyx with carbon fiber details",
            color = "black_onyx",
            material = "matte_black",
            value = 3800,
            texture = 2,
            drawable = 12
        },
        {
            name = "Plata Pura",
            description = "Silver finish with custom engraving",
            color = "silver",
            material = "brushed_silver",
            value = 3200,
            texture = 3,
            drawable = 12
        },
        {
            name = "Cromo Limpio",
            description = "Chrome finish with stainless band",
            color = "chrome",
            material = "polished_chrome",
            value = 2800,
            texture = 4,
            drawable = 12
        }
    },

    Features = {
        HomieLocator = {
            maxDistance = 2000.0,
            cooldown = 120,
            batteryUsage = 15
        },
        CarTracker = {
            maxDistance = 3000.0,
            cooldown = 180,
            batteryUsage = 20
        },

        FoodDelivery = {
            serviceName = "Barrio Bites",
            serviceIcon = "CHAR_MEXICAN_GOON",
            batteryUsage = 5,

            restaurants = {
                {
                    type = "taco",
                    options = {
                        "El Rancho Taqueria",
                        "Taco Bomb",
                        "Senior Jake's Tacos",
                        "Vatos Tacos"
                    }
                },
                {
                    type = "burrito",
                    options = {
                        "Burrito Factory",
                        "King Burrito",
                        "Mission Burritos"
                    }
                },
                {
                    type = "torta",
                    options = {
                        "Mama's Tortas",
                        "Torta House",
                        "Jalisco Sandwiches"
                    }
                }
            },

            menuItems = {
                taco = {
                    {"Street Taco", 3},
                    {"Carne Asada Taco", 5},
                    {"Carnitas Taco", 4},
                    {"Al Pastor Taco", 5},
                    {"Lengua Taco", 6},
                    {"Fish Taco", 7}
                },
                burrito = {
                    {"Bean & Cheese Burrito", 8},
                    {"Carne Asada Burrito", 12},
                    {"California Burrito", 14},
                    {"Veggie Burrito", 10}
                },
                torta = {
                    {"Milanesa Torta", 11},
                    {"Cubana Torta", 13},
                    {"Carnitas Torta", 12}
                },
                sides = {
                    {"Chips & Salsa", 3},
                    {"Guacamole", 4},
                    {"Refried Beans", 3},
                    {"Mexican Rice", 3}
                }
            },

            deliveryTime = {8, 20},
            cooldown = 30
        },

        Battery = {
            capacity = 100,
            drainRate = 0.5,
            chargeRate = 25
        },

        UI = {
            showTime = true,
            showBattery = true,
            themes = {"barrio", "classic", "minimal", "bling"}
        }
    },

    Commands = {
        EquipWatch = "equipwatch",
        LocateHomie = "findhomie",
        FindCar = "findride",
        OrderFood = "orderfood",
        ChargeWatch = "chargewatch"
    },

    Animations = {
        CheckWatch = {
            dict = "amb@code_human_wander_texting_fat@male@base",
            anim = "static",
            duration = 3500
        },
        OrderFood = {
            dict = "cellphone@",
            anim = "cellphone_text_read_base",
            duration = 5000
        }
    },

    Notifications = {
        BatteryLow = "Battery low, please charge your watch.",
        HomieFound = "Homie located, check your map!",
        HomieOutOfRange = "No homies in range.",
        CarFound = "Your ride has been tracked, check your GPS.",
        CarOutOfRange = "Your ride is out of tracking range.",
        FoodOrdered = "Your food is on the way! Estimated time: %d minutes.",
        CooldownActive = "Feature on cooldown, please wait %d seconds."
    }
}

return Config
