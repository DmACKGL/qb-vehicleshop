Config = {}

Config.PlateLetters  = 4
Config.PlateNumbers  = 4
Config.PlateUseSpace = false

Config.SpawnVehicle = true  -- TRUE if you want spawn vehicle when buy

Config.TestDrive = true     -- TRUE if you want enable test drive
Config.TestDriveTime = 30   -- TIME in SEC

Config.Blip = {
    vector3(-56.49, -1096.58, 26.42) -- Main Car Dealer Blip
}

Config.Shops = {
    [1] = {
        category = 'pdm', -- Change ["shop"] in qb-core/shared.lua to match this for the vehicles you want
        coords = vector3(-56.49, -1096.58, 26.42)
    },
    [2] = {
        category = 'police',
        coords = vector3(454.6, -1017.4, 28.4)
    },
    [3] = {
        category = 'ambulance',
        coords = vector3(307.7, -1433.4, 30.0)
    },
    [4] = {
        category = 'mechanic',
        coords = vector3(-97.5, 6496.1, 30.4)
    },
    [5] = {
        category = 'motorcycle',
        coords = vector3(0, 0, 0)
    },
    [6] = {
        category = 'offroad',
        coords = vector3(0, 0, 0)
    },
    [7] = {
        category = 'boat',
        coords = vector3(0, 0, 0)
    },
    [8] = {
        category = 'donator',
        coords = vector3(0, 0, 0)
    }
}