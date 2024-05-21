Citizen.CreateThread(function()
    for k, v in pairs(Config.Blips) do
        local blip = AddBlipForCoord(v.pos)

        SetBlipSprite(blip, v.sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, v.scale)
        SetBlipColour(blip, v.color)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(v.name)
        EndTextCommandSetBlipName(blip)
    end
end)