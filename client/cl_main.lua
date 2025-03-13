-- [Locales] --
lib.locale()

-- [Events] --
--Record
RegisterNetEvent('vl_rockstar:cl:record')
AddEventHandler('vl_rockstar:cl:record', function()
    StartRecording(1)
    lib.notify({
        title = locale('notify.record_title'),
        description = locale('notify.record_desc'),
        showduration = Config.ShowDuration,
        position = Config.Position,
        type = 'inform',
    })
end)

--Save Clip
RegisterNetEvent('vl_rockstar:cl:saveclip')
AddEventHandler('vl_rockstar:cl:saveclip', function()
    StartRecording(0)
    StopRecordingAndSaveClip()
    lib.notify({
        title = locale('notify.saveclip_title'),
        description = locale('notify.saveclip_desc'),
        showduration = Config.ShowDuration,
        position = Config.Position,
        type = 'success',
    })
end)

--Delete Clip
RegisterNetEvent('vl_rockstar:cl:deleteclip')
AddEventHandler('vl_rockstar:cl:deleteclip', function()
    StopRecordingAndDiscardClip()
    lib.notify({
        title = locale('notify.deleteclip_title'),
        description = locale('notify.deleteclip_desc'),
        showduration = Config.ShowDuration,
        position = Config.Position,
        type = 'error',
    })
end)


--[Menu]--
lib.registerContext({
    id = 'vl_rockstar',
    title = locale('menu.main_title'),
    options = {
        {
            title = locale("menu.record_title"),
            description = locale('menu.record_desc'),
            icon = Config.RecordIcon,
            event = 'vl_rockstar:cl:record',
        },
        {
            title = locale('menu.saveclip_title'),
            description = locale('menu.saveclip_desc'),
            icon = Config.SaveClipIcon,
            event = 'vl_rockstar:cl:saveclip',
        },
        {
            title = locale('menu.deleteclip_title'),
            description = locale('menu.deleteclip_desc'),
            icon = Config.DeleteClipIcon,
            event = 'vl_rockstar:cl:deleteclip',
        },
        {
            title = locale('menu.close_title'),
            description = locale('menu.close_desc'),
            icon = Config.CloseIcon,
            onSelect = function()
                lib.hideContext('vl_rockstar')
            end,
        }
    }
})


-- [Command] --
--Open Menu
RegisterCommand(Config.Command, function(source)
    lib.showContext('vl_rockstar')
end, false)