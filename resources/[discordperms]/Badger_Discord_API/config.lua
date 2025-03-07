Config = {
	Guild_ID = '1169125512040435753', -- Set to the ID of your guild (or your Primary guild if using Multiguild)
	Multiguild = false, -- Set to true if you want to use multiple guilds
	Guilds = {
		["name"] = "Styles Roleplay", -- Replace this with a name, like "main"
	},
	Bot_Token = 'MTI2ODczNjIxNzI2OTQwNzc5NQ.GFQ7Yz.AcuBbzF_3msVbhJIuY-a87VV9kmoIX2UxQCdrw',
	RoleList = {
		['VIP Clothing'] = 1169713109104066600,
		['SRP | Civilian'] = 1169403486966907071,
		['VIP Emotes'] = 1169713109104066600,
		['VIP Peds'] = 1169713109104066600,
		['Bronze Supporter'] = 1170021410664628344,
		['Silver Supporter'] = 1170021547008864281,
		['Gold Supporter'] = 1170021556160827412,
		['Diamond Supporter'] = 1170021568034897961,
		['Platinum Supporter'] = 1170021582748524724,
		['SRP | Contibutor'] = 1169713109104066600,
		['Staff Accessories'] = 1170022531051298916,
    	['SRP | Staff'] = 1170022531051298916, -- This is Administration Team
    	['SRP | Board of Directors'] = 1039677136270798896, -- This is Board of Directors
    	['Founder'] = 1169264083187535932, -- This is Founder
	},
	CacheDiscordRoles = true, -- true to cache player roles, false to make a new Discord Request every time
	CacheDiscordRolesTime = 60, -- if CacheDiscordRoles is true, how long to cache roles before clearing (in seconds)
}

Config.Splash = {
	Header_IMG = 'https://forum.cfx.re/uploads/default/original/3X/a/6/a6ad03c9fb60fa7888424e7c9389402846107c7e.png',
	Enabled = false,
	Wait = 10, -- How many seconds should splash page be shown for? (Max is 12)
	Heading1 = "Welcome to [ServerName]",
	Heading2 = "Make sure to join our Discord and check out our website!",
	Discord_Link = 'https://discord.gg',
	Website_Link = 'https://badger.store',
}