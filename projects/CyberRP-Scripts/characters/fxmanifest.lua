fx_version 'cerulean'
game 'gta5'

author 'Bobby Falero (CyberWolf001)'
description 'Modular NPC Visual Framework for FiveM - Outfit and Accessory Loader'
version '1.0.0'

shared_script 'config.lua'

client_scripts {
    'apply_outfit.lua',
    'characters/**/config.lua'
}

lua54 'yes'
