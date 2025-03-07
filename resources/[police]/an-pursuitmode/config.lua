Config = {}

Config.DefaultKey = 'N'
Config.framework = 'qbcore' -- qbcore / esx
Config.Notification = "%s mode applied" -- %s is the vehiclemode



Config.AuthorizedJobs = {
    "police",
}

Config.VehicleModes = { 
    "C",
    "B",
    "B+",
    "A",
    "A+",
    "S",
    "S+"
}

Config.VehicleModifications = { -- define each mode their own modifications
    ["C"] = {
        ["XenonHeadlights"] = false,
    },
    ["B"] = {
        ["XenonHeadlights"] = false,
    },
    ["B+"] = {
        ["XenonHeadlights"] = false,
    },
    ["A"] = {
        ["XenonHeadlights"] = false,
    },
    ["A+"] = {
        ["XenonHeadlights"] = false,
    },
    ["S"] = {
        ["XenonHeadlights"] = false,
    },
    ["S+"] = {
        ["XenonHeadlights"] = false,
    }
}

Config.VehiclesConfig = {
    ["nf18charg"] = {
        ["C"] = {
            ["fDriveInertia"] = 1.000000,
            ["fBrakeForce"] = 0.500000,
            ["fInitialDriveMaxFlatVel"] = 144,
            ["fSteeringLock"] = 38.000000,
            ["fInitialDriveForce"] = 0.3300
        },
        ["B"] = {
            ["fDriveInertia"] = 1.000000,
            ["fBrakeForce"] = 0.600000,
            ["fInitialDriveMaxFlatVel"] = 153,
            ["fSteeringLock"] = 38.000000,
            ["fInitialDriveForce"] = 0.385
        },
        ["B+"] = {
            ["fDriveInertia"] = 1.000000,
            ["fBrakeForce"] = 0.700000,
            ["fInitialDriveMaxFlatVel"] = 168,
            ["fSteeringLock"] = 38.000000,
            ["fInitialDriveForce"] = 0.42600
        }
    },
    ["11cvpiv"] = {
        ["C"] = {
            ["fDriveInertia"] = 1.000000,
            ["fBrakeForce"] = 0.500000,
            ["fInitialDriveMaxFlatVel"] = 140,
            ["fSteeringLock"] = 38.000000,
            ["fInitialDriveForce"] = 0.3250
        },
        ["B"] = {
            ["fDriveInertia"] = 1.000000,
            ["fBrakeForce"] = 0.600000,
            ["fInitialDriveMaxFlatVel"] = 150,
            ["fSteeringLock"] = 38.000000,
            ["fInitialDriveForce"] = 0.385
        },
        ["B+"] = {
            ["fDriveInertia"] = 1.000000,
            ["fBrakeForce"] = 0.700000,
            ["fInitialDriveMaxFlatVel"] = 158,
            ["fSteeringLock"] = 38.000000,
            ["fInitialDriveForce"] = 0.42200
        }
    },
    ["nf20dur"] = {
        ["C"] = {
            ["fDriveInertia"] = 1.000000,
            ["fBrakeForce"] = 0.500000,
            ["fInitialDriveMaxFlatVel"] = 140,
            ["fSteeringLock"] = 38.000000,
            ["fInitialDriveForce"] = 0.3330
        },
        ["B"] = {
            ["fDriveInertia"] = 1.000000,
            ["fBrakeForce"] = 0.600000,
            ["fInitialDriveMaxFlatVel"] = 150,
            ["fSteeringLock"] = 38.000000,
            ["fInitialDriveForce"] = 0.385
        },
        ["B+"] = {
            ["fDriveInertia"] = 1.000000,
            ["fBrakeForce"] = 0.6500000,
            ["fInitialDriveMaxFlatVel"] = 168,
            ["fSteeringLock"] = 38.000000,
            ["fInitialDriveForce"] = 0.42200
        }
    },
    ["mach1rb"] = {
        ["B"] = {
            ["fDriveInertia"] = 1.000000,
            ["fBrakeForce"] = 0.72,
            ["fInitialDriveMaxFlatVel"] = 158,
            ["fSteeringLock"] = 38.000000,
            ["fInitialDriveForce"] = 0.338
        },
        ["B+"] = {
            ["fDriveInertia"] = 1.000000,
            ["fBrakeForce"] = 0.75,
            ["fInitialDriveMaxFlatVel"] = 168,
            ["fSteeringLock"] = 38.000000,
            ["fInitialDriveForce"] = 0.39
        }
    }

}