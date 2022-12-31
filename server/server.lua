QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('qb-vehicleshop.requestInfo')
AddEventHandler('qb-vehicleshop.requestInfo', function()
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local rows

    TriggerClientEvent('qb-vehicleshop.receiveInfo', src, xPlayer.PlayerData.money['bank'], xPlayer.PlayerData.firstname)
    TriggerClientEvent("qb-vehicleshop.notify", src, 'error', 'Use A and D To Rotate')
end)

QBCore.Functions.CreateCallback('qb-vehicleshop.isPlateTaken', function (source, cb, plate)
    local result = MySQL.query.await('SELECT * FROM player_vehicles WHERE plate = ?', {plate})
    if result[1] ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-vehicleshop:checkVehicle', function(source, cb, veh)
    cb(Config.LimitQuantityVehicles[veh])
end)

RegisterServerEvent('qb-vehicleshop.CheckMoneyForVeh')
AddEventHandler('qb-vehicleshop.CheckMoneyForVeh', function(veh, price, name, vehicleProps, garage)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local cost = price

    if not QBCore.Shared.Vehicles[veh].price == cost then return end
    if Config.BlacklistedVehicles[veh] then return end

    if Config.PriceDiscount[veh] then
        cost = tonumber(price) + Config.PriceDiscount[veh]
    end

    if xPlayer.PlayerData.money['bank'] >= tonumber(cost) then
        xPlayer.Functions.RemoveMoney('bank', tonumber(cost))
        local vehiclePropsjson = json.encode(vehicleProps)
        if Config.SpawnVehicle then
            stateVehicle = 0
        else
            stateVehicle = 1
        end

        exports.oxmysql:execute("INSERT INTO `player_vehicles` (`license`, `citizenid`, `vehicle`, `hash`, `mods`, `plate`, `garage`, `state`) VALUES(@license, @citizenid, @vehicle, @hash, @mods, @plate, @garage, @state)", {
            ['@license'] = xPlayer.PlayerData.license,
            ['@citizenid'] = xPlayer.PlayerData.citizenid,
            ['@vehicle'] = veh,
            ['@hash'] = GetHashKey(veh),
            ['@mods'] = json.encode(vehicleProps),
            ['@plate'] = vehicleProps.plate,
            ['@garage'] = garage,
            ['@state'] = stateVehicle,
        })
        TriggerClientEvent("qb-vehicleshop.successfulbuy", source, name, vehicleProps.plate, cost)
        TriggerClientEvent('qb-vehicleshop.receiveInfo', source, xPlayer.PlayerData.money['bank'])
        if Config.SpawnVehicle then
            TriggerClientEvent('qb-vehicleshop.spawnVehicle', source, veh, vehicleProps.plate)
        end
        if Config.LimitQuantityVehicles[veh] then
            Config.LimitQuantityVehicles[veh] = Config.LimitQuantityVehicles[veh]-1
        end
    else
        TriggerClientEvent("qb-vehicleshop.notify", source, 'error', 'Not Enough Money')
    end
end)
