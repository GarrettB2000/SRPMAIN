Config = {}

Config.MinCops = 2

Config.RobbedPlates = {}

Config.TierOne = "sec_a" -- Fleeca Bank Card
Config.TierTwo = "laptop_green" -- Bobcat Card
Config.TierThree = "sec_c" -- bank trucks

Config.DirtyMoney = math.random(15,20) -- amount of dirty money rewarded

Config.Minigame = {
    correctBlocks = 16, -- Number of correct blocks the player needs to click
    incorrectBlocks = 4, -- number of incorrect blocks after which the game will fail
    timetoShow = 7, -- time in secs for which the right blocks will be shown
    timetoLose = 25 -- maximum time after timetoshow expires for player to select the right blocks
}