Rewards = {
    Trollys = {
        ['money'] = { -- Amount of bags rewarded when a player loots a trolly, minWorth and maxWorth decide the item.info.worth of the markedbills
            fleeca = { minAmount = 6, maxAmount = 8, minWorth = 10000, maxWorth = 14000 },
            maze = { minAmount = 3, maxAmount = 5, minWorth = 10000, maxWorth = 14000 },
            paleto = { minAmount = 10, maxAmount = 17, minWorth = 10000, maxWorth = 14000 },
            pacific = { minAmount = 16, maxAmount = 26, minWorth = 10000, maxWorth = 14000 }
        },
        ['gold'] = { -- Amount of gold bars rewarded when a player loots a gold trolly
            fleeca = { minAmount = 4, maxAmount = 5 },
            maze = { minAmount = 4, maxAmount = 6 },
            paleto = { minAmount = 3, maxAmount = 5 },
            pacific = { minAmount = 8, maxAmount = 11 }
        }
    },
    
    Lockers = {
        ['fleeca'] = {
            items = {'markedbills', }, -- Every time a player unlocks a locker, a random item from this array will be drawn, you can add more items
            amount = { minAmount = 1, maxAmount = 2 },
            rareChance = 25,
            rareItem = 'laptop_blue',
        },
        ['maze'] = {
            items = {'goldbar', },
            amount = { minAmount = 1, maxAmount = 3 },
            rareChance = 15,
            rareItem = 'usb_blue',
        },
        ['paleto'] = {
            items = {'goldbar', },
            amount = { minAmount = 1, maxAmount = 1 },
            rareChance = 15,
            rareItem = 'laptop_red',
        },
        ['pacific'] = {
            items = {'goldbar', },
            amount = { minAmount = 1, maxAmount = 2 },
            rareChance = 10,
            rareItem = 'usb_black', -- You could use the vault to drop a rare item used in another heist!
        }
    }
}
