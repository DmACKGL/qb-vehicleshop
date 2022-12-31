Config = {}
Config.UseTarget = true--GetConvar('UseTarget', 'false') == 'true'
Config.Debug = true

Config.PlateLetters  = 4
Config.PlateNumbers  = 4
Config.PlateUseSpace = false

Config.SpawnVehicle = true  -- TRUE if you want spawn vehicle when purchased (If set to false, MAKE SURE to provide a garage in the shop's config)
Config.FuelSystem = "LegacyFuel"

Config.BlacklistedVehicles = { -- These vehicles won't show up in the shop
    ['akula'] = true,
    ['alkonost'] = true,
    ['annihilator'] = true,
    ['annihilator2'] = true,
    ['apc'] = true,
    ['ardent'] = true,
    ['avenger'] = true,
    ['barrage'] = true,
    ['blazer5'] = true,
    ['bombushka'] = true,
    ['boxville5'] = true,
    ['bruiser'] = true,
    ['brutus'] = true,
    ['buffalo4'] = false,
    ['buzzard'] = true,
    ['buzzard2'] = true,
    ['caracara'] = true,
    ['cerberus'] = true,
    ['cerberus2'] = true,
    ['cerberus3'] = true,
    ['champion'] = true,
    ['chernobog'] = true,
    ['comet4'] = false,
    ['deathbike'] = true,
    ['deity'] = false,
    ['deluxo'] = true,
    ['dinghy5'] = true,
    ['dominator4'] = true,
    ['dune3'] = true,
    ['granger2'] = false,
    ['halftrack'] = true,
    ['hunter'] = true,
    ['hydra'] = true,
    ['impaler2'] = true,
    ['impaler3'] = true,
    ['imperator'] = true,
    ['insurgent'] = true,
    ['insurgent3'] = true,
    ['issi4'] = true,
    ['jb7002'] = true,
    ['jet'] = true,
    ['jubilee'] = false,
    ['khanjali'] = true,
    ['kosatka'] = true,
    ['lazer'] = true,
    ['limo2'] = true,
    ['menacer'] = true,
    ['microlight'] = true,
    ['minitank'] = true,
    ['mogul'] = true,
    ['molotok'] = true,
    ['monster3'] = true,
    ['mule4'] = true,
    ['nightshark'] = true,
    ['nokota'] = true,
    ['oppressor'] = true,
    ['oppressor2'] = true,
    ['paragon2'] = true,
    ['patriot3'] = false,
    ['patrolboat'] = true,
    ['pounder2'] = true,
    ['pyro'] = true,
    ['rcbandito'] = true,
    ['revolter'] = true,
    ['rhino'] = true,
    ['rogue'] = true,
    ['ruiner2'] = true,
    ['savage'] = true,
    ['savestra'] = true,
    ['scarab'] = true,
    ['scarab2'] = true,
    ['scarab3'] = true,
    ['scramjet'] = true,
    ['seabreeze'] = true,
    ['seasparrow2'] = true,
    ['seasparrow3'] = true,
    ['slamvan4'] = true,
    ['speedo4'] = true,
    ['starling'] = true,
    ['strikeforce'] = true,
    ['stromberg'] = true,
    ['tampa3'] = true,
    ['technical'] = true,
    ['technical2'] = true,
    ['technical3'] = true,
    ['terbyte'] = true,
    ['thruster'] = true,
    ['titan'] = true,
    ['toreador'] = true,
    ['trailerlarge'] = true,
    ['trailersmall2'] = true,
    ['tula'] = true,
    ['valkyrie'] = true,
    ['vigilante'] = true,
    ['viseris'] = true,
    ['volatol'] = true,
    ['zr380'] = true,

    -- OTHER
    ['firetruk'] = true,
    ['ambulance'] = true,
    ['blimp'] = true,
    ['blimp2'] = true,
    ['blimp3'] = true,

    ['frogger'] = true,
    ['swift'] = true,
    ['cargobob'] = true,
    ['dune2'] = true,
    ['monster'] = true,
    ['polmav'] = true,
    ['policeb'] = true,

    ['seasparrow'] = true,
    ['havok'] = true,
    ['volatus'] = true,
    ['supervolito'] = true,
    ['supervolito2'] = true,

    ['riot2'] = true,
    ['voltic2'] = true,

    ['airtug'] = true,
    ['camper'] = true,
    ['luxor'] = true,
    ['luxor2'] = true,
    ['maverick'] = true,
    ['mule'] = true,
    ['rrocket'] = true,
    ['shamal'] = true,
}

Config.LimitQuantityVehicles = { -- These vehicles will be limited to the number set (This is only temporary, after the resource is restarted, it returns to its original amount)
    --["blista"] = 1, -- vehicle/quantity
}

Config.PriceDiscount = {
    --["blista"] = 1500 -- vehicle/price change (a positive number adds to the base value, while a negative number removes from the base value qb-core/shared/vehicles.lua)
}

Config.Shops = {
    ['pdm'] = { -- The Shop identifier.
        garage = "pillboxgarage", -- Value is not required. Used to set primary garage after purchase
        coord = vector4(-56.5, -1096.58, 26.42-1, 28.94), -- used for the NPC and blip
        blip = { -- Table is not required
            sprite = 326,
            scale = 0.75,
            display = 4,
            colour = 3,
            shortrange = true,
            label = "Premium Deluxe Motorsport"
        },
        target = { -- Table is REQUIRED if Config.UseTarget is true
            -- For peds
            usePed = true, -- if you want to use a ped instead of a boxzone
            pedModel = `a_m_m_indian_01`, -- the ped model
            pedAnimation = "", -- the ped animation (not required)
            -- For boxzones
            length = 1,
            width = 1,
            minZ = 26.42,
            maxZ = 27.42,
            debugPoly = false,
            -- For both
            distance = 2.5,
            properties = {
                icon = "fas fa-car",
                label = "Purchase a Vehicle",
                job = "" -- if you want to set the interaction of the taget to a job. Can be job = "police" or job = {["police"] = 0, ["ambulance"] = 2}
            }
        },
        setupStore = { -- Table is REQUIRED
            allowTestDrive = { -- Table is not required
                spawnTestLoc = vector4(-11.87, -1080.87, 25.71, 132.0), -- Where the test vehicle will spawn
                testDriveTime = 30 -- in seconds
            },
            spawnPurchaseLoc = vector4(-56.79, -1109.85, 26.43, 71.5), -- where a purchased vehicle will spawn
            shopVehicleLoc = vector4(-49.66, -1095.51, 26.11, 114.06), -- where the preview vehicle will spawn
            shopCameraLoc = {-55.66, -1095.51, 28.21, 114.06, 0.0, 0.0} --posx,posy,poz,rotx,roty,rotz | this is where the camera will be
        },
        showVehicles = { -- Table is not required
            [1] = {model = `granger2`, livery = 0, location = vector4(-43.22, -1094.51, 25.87, 218.0)},
            [2] = {model = `windsor`, location = vector4(-45.92, -1102.95, 25.87, 293.39)},
            [3] = {model = `vigero`, location = vector4(-39.54, -1095.73, 26.09, 212.0)},
            [4] = {model = `schafter2`, location = vector4(-48.51, -1101.36, 26.01, 305.47)},
            [5] = {model = `bati`, location = vector4(-40.02, -1106.04, 25.77, 303.97)},
            [6] = {model = `tribike`, location = vector4(-41.42, -1105.42, 26.04, 8.98)},
        }
    },
    ['luxury'] = {
        garage = "spanishave",
        coord = vector4(-1253.51, -350.06, 36.91-1, 116.39),
        blip = {sprite = 326, scale = 0.75, display = 4, colour = 3, shortrange = true, label = "Luxury Vehicle Shop"},
        target = {usePed = true, pedModel = `a_m_m_indian_01`, pedAnimation = "", length = 1, width = 1, minZ = 26.42, maxZ = 27.42, debugPoly = false, distance = 2.5,
            properties = {icon = "fas fa-car", label = "Purchase a Vehicle", job = ""}},
        setupStore = {
            allowTestDrive = {spawnTestLoc = vector4(-1254.39, -388.95, 37.11, 298.58), testDriveTime = 30},
            spawnPurchaseLoc = vector4(-1231.46, -349.86, 37.33, 26.61), shopVehicleLoc = vector4(-1262.23, -360.55, 36.49, 250.86), shopCameraLoc = {-1258.23, -356.55, 38.49, 250.86, 0.0, 0.0}},
        showVehicles = {
            [1] = {model = `italirsx`, location = vector4(-1265.31, -354.44, 35.91, 205.08)},
            [2] = {model = `italigtb`, location = vector4(-1270.06, -358.55, 35.91, 247.08)},
            [3] = {model = `nero`, location = vector4(-1269.21, -365.03, 35.91, 297.12)},
            [4] = {model = `bati`, location = vector4(-1252.07, -364.2, 35.91, 56.44)},
            [5] = {model = `carbonrs`, location = vector4(-1255.49, -365.91, 35.91, 55.63)},
            [6] = {model = `hexer`, location = vector4(-1249.21, -362.97, 35.91, 53.24)},
        },
    },
    ['boats'] = {
        garage = "lsymc",
        coord = vector4(-736.53, -1327.26, 1.6-1, 9.93),
        blip = {sprite = 410, scale = 0.75, display = 4, colour = 3, shortrange = true, label = "Marina Shop"},
        target = {usePed = true, pedModel = `a_m_m_indian_01`, pedAnimation = "", length = 1, width = 1, minZ = 26.42, maxZ = 27.42, debugPoly = false, distance = 2.5,
            properties = {icon = "fas fa-car", label = "Purchase a Vehicle", job = ""}},
        setupStore = {
            allowTestDrive = {spawnTestLoc = vector4(-722.23, -1351.98, 0.14, 135.33), testDriveTime = 90},
            spawnPurchaseLoc = vector4(-727.87, -1353.1, -0.17, 137.09), shopVehicleLoc = vector4(-884.46, -1360.36, 0.0, 90.76), shopCameraLoc = {-880.46, -1376.26, 4.0, -100.76, 0.0, 0.0}},
        showVehicles = {
            [1] = {model = `seashark`, location = vector4(-727.05, -1326.59, 0.00, 229.5)},
            [2] = {model = `dinghy`, location = vector4(-732.84, -1333.5, -0.50, 229.5)},
            [3] = {model = `speeder`, location = vector4(-737.84, -1340.83, -0.50, 229.5)},
            [4] = {model = `marquis`, location = vector4(-741.53, -1349.7, -2.00, 229.5)},
        },
    },
    ['air'] = {
        garage = "intairport",
        coord = vector4(-1622.43, -3154.02, 13.99-1, 52.81),
        blip = {sprite = 251, scale = 0.75, display = 4, colour = 3, shortrange = true, label = "Air Shop"},
        target = {usePed = true, pedModel = `a_m_m_indian_01`, pedAnimation = "", length = 1, width = 1, minZ = 26.42, maxZ = 27.42, debugPoly = false, distance = 2.5,
            properties = {icon = "fas fa-car", label = "Purchase a Vehicle", job = ""}},
        setupStore = {
            allowTestDrive = {spawnTestLoc = vector4(-1625.19, -3103.47, 13.94, 330.28), testDriveTime = 90},
            spawnPurchaseLoc = vector4(-1650.84, -3140.54, 13.99, 328.23), shopVehicleLoc = vector4(-1647.82, -3135.33, 13.99, 331.9), shopCameraLoc = {-1635.82, -3123.33, 18.99, 331.9, 0.0, 0.0}},
        showVehicles = {
            [1] = {model = `nimbus`, location = vector4(-1651.36, -3162.66, 12.99, 346.89)},
            [2] = {model = `luxor2`, location = vector4(-1668.53, -3152.56, 12.99, 303.22)},
            [3] = {model = `volatus`, location = vector4(-1632.02, -3144.48, 12.99, 31.08)},
            [4] = {model = `frogger`, location = vector4(-1663.74, -3126.32, 12.99, 275.03)},
        },
    },
    ['truck'] = {
        coord = vector4(900.45, -1155.58, 25.16-1, 175.08),
        blip = {sprite = 477, scale = 0.75, display = 4, colour = 3, shortrange = true, label = "Truck Shop"},
        target = {usePed = true, pedModel = `a_m_m_indian_01`, pedAnimation = "", length = 1, width = 1, minZ = 26.42, maxZ = 27.42, debugPoly = false, distance = 2.5,
            properties = {icon = "fas fa-car", label = "Purchase a Vehicle", job = ""}},
        setupStore = {
            allowTestDrive = {spawnTestLoc = vector4(867.65, -1192.4, 25.37, 95.72), testDriveTime = 30},
            spawnPurchaseLoc = vector4(909.35, -1181.58, 25.55, 177.57), shopVehicleLoc = vector4(886.89, -1237.79, 25.98, 303.82), shopCameraLoc = {880.36, -1227.97, 29.18, 182.48, 0.0, 0.0}},
        showVehicles = {
            [1] = {model = `hauler`, location = vector4(890.84, -1170.92, 25.08, 269.58)},
            [2] = {model = `phantom`, location = vector4(878.45, -1171.04, 25.05, 273.08)},
            [3] = {model = `mule`, location = vector4(880.44, -1163.59, 24.87, 273.08)},
            [4] = {model = `mixer`, location = vector4(896.95, -1162.62, 24.98, 273.08)},
        },
    },
}