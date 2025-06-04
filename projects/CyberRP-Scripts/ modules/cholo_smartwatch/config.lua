-- config.lua for cholo_smartwatch

Config = Config or {}

-- If you want to pull in the main config directly, use:
local smartwatchConfig = require("modules.cholo_smartwatch.cholo_smartwatch")
for k, v in pairs(smartwatchConfig) do
    Config[k] = v
end
