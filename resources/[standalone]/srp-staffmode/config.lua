Config = Config or {}

Config.NotifyType = 'ox' --  notification type: 'qb' for qb-core standard notifications, 'okok' for okokNotify notifications, 'ox' for oxnotify notifications

Config.qbclothing = false -- set to true if you are using qb-clothing as your main clothing script else false
Config.fivemappearance = true -- set to true if you are using fivem-appearance else false

Config.Effects = true -- Particle effects on staff mode on/off.
Config.SyncEffects = true -- if true, other players will be able to see the particle effects on you if effects is on above. if false, only YOU will see the effects

Config.PermissionMinLevel = 'mod'
Config.DiscordRoles = {
    [1] = 1170022531051298916, -- All Staff

}

Config.Outfits = {
    ['male'] = {
        [1170022531051298916] = { -- Staff
            outfitData = {          
                --["hair"]       = { item = 0, texture = 0},  -- Hair
                --["pants"]       = { item = 125, texture = 1},  -- Pants
                --["arms"]        = { item = 17, texture = 0},  -- Arms
                --["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
                ["vest"]        = { item = 170, texture = 0},  -- Body Vest
                --["torso2"]      = { item = 149, texture = 1},  -- Jacket
                --["shoes"]       = { item = 25, texture = 0},  -- Shoes
                --["accessory"]   = { item = 15, texture = 0},  -- Neck Accessory
                --["bag"]         = { item = 0, texture = 0},  -- Bag
                --["hat"]         = { item = -1, texture = -1},  -- Hat
                --["glass"]       = { item = 0, texture = 0},  -- Glasses
                --["mask"]        = { item = 126, texture = 0},  -- Mask 
            }
        },
    },


    ['female'] = {
        [1170022531051298916] = { -- Staff
            outfitData = {          
                --["hair"]       = { item = 0, texture = 0},  -- Hair
                --["pants"]       = { item = 125, texture = 1},  -- Pants
                --["arms"]        = { item = 17, texture = 0},  -- Arms
                --["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
                ["vest"]        = { item = 94, texture = 0},  -- Body Vest
                --["torso2"]      = { item = 149, texture = 1},  -- Jacket
                --["shoes"]       = { item = 25, texture = 0},  -- Shoes
                --["accessory"]   = { item = 15, texture = 0},  -- Neck Accessory
                --["bag"]         = { item = 0, texture = 0},  -- Bag
                --["hat"]         = { item = -1, texture = -1},  -- Hat
                --["glass"]       = { item = 0, texture = 0},  -- Glasses
                --["mask"]        = { item = 126, texture = 0},  -- Mask 
            }

        },
    }
}
