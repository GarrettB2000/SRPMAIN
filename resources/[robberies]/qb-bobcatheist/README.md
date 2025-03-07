Made by Lionh34rt#4305
Discord: https://discord.gg/AWyTUEnGeN
Tebex: https://lionh34rt.tebex.io/

# Dependencies
* [QBCore Framework](https://github.com/qbcore-framework)
* [qb-target by BerkieBb](https://github.com/BerkieBb/qb-target)
* [Memorygame by pushkart2](https://github.com/pushkart2/memorygame)
* [Bobcat Depot MLO by TobiiDK](https://www.patreon.com/tobiidk)

# Installation
* **Install qb-bobcatheist and memorygame (optional, can replace with another minigame)**
* **Add the items to your shared**
* **Create a log for bobcat**

# Shared.lua items
```lua
-- Bobcat
["explosive"] 					 = {["name"] = "explosive", 					["label"] = "Explosive", 				["weight"] = 5000, 		["type"] = "item", 		["image"] = "explosive.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   	["combinable"] = nil,   	["description"] = "An improvised explosive of fireworks and thermite"},

['security_card_06'] 			 = {['name'] = 'security_card_06', 			  	['label'] = 'Security Card Red', 		['weight'] = 0, 		['type'] = 'item', 		['image'] = 'security_card_06.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A security card... I wonder what it goes to'},

```

# Make a log webhook in qb-smallresources > server > logs.lua:
['bobcat'] = 'discord webhook'
