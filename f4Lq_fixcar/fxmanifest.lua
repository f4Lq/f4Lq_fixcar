fx_version 'adamant'
lua54 'yes'
game 'gta5'

name 'f4lq_fixcar'
author 'f4Lq'
description 'This is a script that allows you to repair your vehicle using the "/fixcar" command. The script needs the "f4LqNotify" script for it to work properly.'
version '1.4.0'


client_script {
    'fixcar_cl.lua',
}

server_script {
    'fixcar_sv.lua',
}

dependency 'f4LqNotify'
