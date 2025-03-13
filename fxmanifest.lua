fx_version 'cerulean'
game 'gta5'
name 'vl_rockstar'
description 'A resource utilizing ox_lib context menu for enabling Rockstar Editor functionalities'

--author 'Nad#1223' <-- Original
--repository 'https://github.com/Nads-Development/nad_rockstar' <-- Original

author 'KNG'
repository 'https://github.com/MriKNG/vl_rockstar'

shared_scripts {
    '@ox_lib/init.lua',
    '@qb-core/shared/locale.lua',
    'shared/*.lua',
}

client_scripts {
    'client/*.lua'
}

server_scripts {
}

dependencies {
    'ox_lib'
}

files {
    'locales/en.json',
    'locales/*.json'
}

lua54 'yes'
