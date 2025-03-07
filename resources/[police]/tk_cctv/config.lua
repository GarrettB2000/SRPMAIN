Config = {}

Config.Framework = 'qb' -- esx/qb
Config.NotificationType = 'qb' -- esx/qb/mythic
Config.Locale = 'en' -- en/fi
Config.DebugMode = false -- false / true

Config.UseOxLib = false -- false / true, remember to add " shared_script '@ox_lib/init.lua' " to fxmanifest.lua if set to true

Config.NeedItemCommand = true -- true/false, should you need Config.TabletItem when using the /camtablet command
Config.TabletItem = 'cctv_tablet' -- name of tablet item
Config.TabletAnim = {
    dict = 'amb@world_human_seat_wall_tablet@female@base',
    name = 'base',
    model = `prop_cs_tablet`,
}

Config.Dist = { -- distances for different actions
    spawn = 50,
    place = 10,
    repair = 10,
    remove = 10,
    hack = 30,
}

Config.RemoveAllCamerasJobs = { -- jobs that should be able to remove all cameras
    ['police'] = 0, -- job name, minimum grade
    --['security'] = 0,
}

Config.ShowPlayerNameInRemoveAccess = false -- false / true, show player name in remove access menu
Config.GetAccessOnHack = false -- false / true, should you get access to the camera when hacking it

Config.DestroyCameraParticle = { -- particle used when a camera is destroyed
    enable = true,
    dict = 'core',
    name = 'ent_col_electrical',
}
Config.PlaceCameraAnim = {
    duration = 5000,
    dict = 'amb@prop_human_movie_bulb@base',
    name = 'base',
}
Config.RemoveCameraAnim = {
    duration = 10000,
    dict = 'amb@prop_human_movie_bulb@base',
    name = 'base',
}
Config.RepairCameraAnim = {
    duration = 10000,
    dict = 'amb@prop_human_movie_bulb@base',
    name = 'base',
}

Config.Cameras = { -- settings for different cameras
    { -- "bad" camera
        item = 'cctv_faulty', -- item name
        model = `prop_cs_cctv`, -- model for camera
        minFov = 60.0, -- minimum fov
        maxFov = 90.0, -- maximum fov
        timecycleModifier = {
            default = {
                name = 'scanline_cam_cheap', -- timecycle modifier used when using the camera
                strength = 1.0,
            },
            destroyed = {
                name = 'NG_filmic22', -- timecycle modifier used when camera is destroyed
                strength = 1.0,
            }
        },
        nightvision = false, -- should the camera have nightvision
        controllable = false, -- should you be able to control the camera
        destroyable = true, -- should the camera be destroyable, cameras can be destroyed by shooting them
        canBeRepaired = true, -- should you be able to repair the camera, if set to false, camera will dissappear when destroyed
        motionDetection = {
            enable = false, -- should motion detection be enabled
        },
        hackable = false, -- should you be able to hack the camera
        jobs = { -- restrict camera placing to certain jobs
            --['police'] = 0, -- job name, minumum grade
        }
    },
    { -- 360 camera
        item = 'cctv_default',
        model = `prop_cctv_cam_07a`,
        minFov = 20.0,
        maxFov = 90.0,
        timecycleModifier = {
            default = {
                name = 'scanline_cam_cheap',
                strength = 1.0,
            },
            destroyed = {
                name = 'scanline_cam_cheap',
                strength = 5.5,
            }
        },
        nightvision = false,
        controllable = true,
        destroyable = true,
        canBeRepaired = true,
        motionDetection = {
            enable = false,
            dist = 20, -- max distance a camera can detect a player from
            cooldown = 1000 * 60 * 2, -- cooldown for detecting a player again
        },
        hackable = false,
        jobs = {}
    },
    { -- advanced camera
        item = 'cctv_advanced',
        model = `prop_cctv_cam_01a`,
        range = 6.0, -- range at which you can move the camera, remove this line if you want the camera to be 360 view
        minFov = 20.0,
        maxFov = 90.0,
        timecycleModifier = {
            default = {
                name = 'scanline_cam_cheap',
                strength = 1.0,
            },
            destroyed = {
                name = 'scanline_cam_cheap',
                strength = 5.5,
            }
        },
        nightvision = true,
        controllable = true,
        destroyable = false,
        canBeRepaired = true,
        motionDetection = {
            enable = true,
            dist = 20,
            cooldown = 1000 * 60 * 2,
        },
        hackable = false,
        jobs = {}
    },
}

Config.Adjust =  {
    maxDist = 0.5, -- max distance to original distance when adjusting camera position
    speed = {
        x = 0.003,
        y = 0.003,
        z = 0.03,
    },
}

Config.NoCameraZones = { -- you can add zones here where cameras shouldn't be allowed to be placed
    --{coords = vec3(106.75, -1330.36, 29.45), radius = 3}
}