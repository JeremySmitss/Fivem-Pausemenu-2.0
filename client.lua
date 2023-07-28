function AddTextEntry(k, v)
   Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), k, v)
end

-- Je moet zelf ff kijken voor je geld te displayen, contant en bank

ESX = exports['es_extended']:getSharedObject()

local playerServerId = GetPlayerServerId(PlayerId())
local fivem_title = "~b~Grand Theft Auto Online ~g~ID:[" .. playerServerId .. "]"
local map_category = "MAP"

local game_category = "GAME"
local disconnect_submenu = "Go back to the server list"
local closegame_submenu = "Exit FiveM and return to desktop"

local info_category = "INFO"
local statistics_category = "STATS"
local settings_category = "SETTINGS"
local gallery_category = "GALLERY"
local rockstar_editor_category = "ROCKSTAR EDITOR"

local fivem_key_config_submenu = "FiveM Keys"

Citizen.CreateThread(function()
   AddTextEntry('FE_THDR_GTAO', fivem_title)
   AddTextEntry('PM_SCR_MAP', map_category)
   AddTextEntry('PM_SCR_GAM', game_category)
   AddTextEntry('PM_PANE_LEAVE', disconnect_submenu)
   AddTextEntry('PM_PANE_QUIT', closegame_submenu)
   AddTextEntry('PM_SCR_INF', info_category)
   AddTextEntry('PM_SCR_STA', statistics_category)
   AddTextEntry('PM_SCR_SET', settings_category)
   AddTextEntry('PM_SCR_GAL', gallery_category)
   AddTextEntry('PM_SCR_RPL', rockstar_editor_category)
   AddTextEntry('PM_PANE_CFX', fivem_key_config_submenu)
end)