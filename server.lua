RegisterNetEvent("av-betterconsole:server:print", function(text, type)
    print(os.date(Config.DateTimeFormat) .. " - " .. type.text .. type.background  .. text .. '\x1b[0m')
end)
