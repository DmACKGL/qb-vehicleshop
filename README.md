# qb-vehicleshop
Vehicle Shop for QB-Core Framework :car:

## Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-garages](https://github.com/qbcore-framework/qb-garages) - For the garages
- [qb-vehiclekeys](https://github.com/qbcore-framework/qb-vehiclekeys) - For the vehicle keys

## Screenshots
![Vehicle shop](https://i.imgur.com/6WOs7Xu.png)
![Purchase confirmation](https://imgur.com/k6L3vQE.png)
![Test drive](https://imgur.com/omvRCbG.png)

## Features
- Vehicle shop with NUI interface
- Color picker (RGB)
- Ability to test drive a vehicle (Test length is configurable)

## Installation
### Manual
- Download the script and put it in the `[qb]` directory.
- Import `qb-vehicleshop.sql` in your database
- Add the following code to your server.cfg/resouces.cfg
```
start qb-vehicleshop
```

## Configuration
```
Config = {}

Config.PlateLetters  = 4 -- Amount of letters used in vehicle plate.
Config.PlateNumbers  = 4 -- Amount of numbers used in vehicle plate.
Config.PlateUseSpace = false -- true: There will be a space in plates between letters and numbers. / false: There won't be a space in plates between letters and numbers.

Config.SpawnVehicle = true  -- true: Vehicle will be spawned when you buy a vehicle. / false: Vehicle won't be spawned when you buy a vehicle.

Config.TestDrive = true     -- true: Players will be available to test drive the vehicles.
Config.TestDriveTime = 30   -- Test length for players (seconds)
```

## Credits to Luminous Development for the source code https://luminous-webstore.tebex.io/package/4295383
