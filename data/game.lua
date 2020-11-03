#include "missions.lua"
#include "messages.lua"

------------------------------------------------------------------------------
-- Levels
------------------------------------------------------------------------------

gLevels = {}
gLevels["lee"] =
{
	map_title = "Lee Chemicals",
	map_x = 1448,
	map_y = 624,
	title = "Lee Chemicals",
	image = "terminal/level/lee.png",
	desc = "Operated by the Lee family for three generations. Lawrence Lee Junior showed a promising start, but developed a weakness for fast cash. He is now a well known name in the criminal underworld.",
}

gLevels["marina"] =
{
	map_title = "West Point Marina",
	map_x = 273,
	map_y = 618,
	title = "West Point Marina",
	image = "terminal/level/marina.png",
	desc = "The oldest marina in Lockelle municipality. It features an industrial part and a separate section for leisure activities.",
}

gLevels["mansion"] =
{
	map_title = "Villa Gordon",
	map_x = 814,
	map_y = 321,
	title = "Villa Gordon",
	image = "terminal/level/mansion.png",
	desc = "The home of mall manager and racing enthusiast Gordon Woo, his daughter Freya and fiancee Enid Coumans. An exclusive mansion with a private race track in the backyard.",
}

gLevels["caveisland"] =
{
	map_title = "Hollowrock Island",
	map_x = 359,
	map_y = 883,
	title = "Hollowrock Island",
	image = "terminal/level/caveisland.png",
	desc = "Formerly an old fishing hamlet, a few years ago Hollowrock Island was transformed into an energy drink research facility.",
}

gLevels["mall"] =
{
	map_title = "Evertides Mall",
	map_x = 472,
	map_y = 342,
	title = "The Evertides Mall",
	image = "terminal/level/mall.png",
	desc = "An upscale shopping center by the waterfront managed by Gordon Woo. Also in the area is Lockelle municipality folk museum.",
}

gLevels["frustrum"] =
{
	map_title = "Frustrum",
	map_x = 829,
	map_y = 580,
	title = "Frustum",
	image = "terminal/level/frustrum.png",
	desc = "Tiny village of Frustrum along the Löckelle river, featuring an upscale hotel, a nightclub and a gas station.",
}

------------------------------------------------------------------------------
-- Clients
------------------------------------------------------------------------------

gClients = {}
gClients["tracy"]=
{
	name = "Tracy",
	image = "terminal/client/tracy.png"
}

gClients["parisa"]=
{
	name = "Parisa Terdiman",
	image = "terminal/client/parisa.png"
}

gClients["gordon"]=
{
	name = "Gordon Woo",
	image = "terminal/client/gordon.png"
}

gClients["lee"]=
{
	name = "Lawrence Lee Junior",
	image = "terminal/client/lee.png"
}

gClients["gjk"]=
{
	name = "Gillian Johnson",
	image = "terminal/client/gillian.png"
}

gClients["tuxedolabs"]=
{
	name = "Tuxedo Labs",
	image = "terminal/client/tuxedolabs.png"
}


------------------------------------------------------------------------------
-- Tools
------------------------------------------------------------------------------


gTools = 
{
	sledge = 
	{
		name="Sledge", 
		image="sledge.png", 
		desc="Short range tool. Causes medium damage on weak materials. Does not need ammunition and does not wear out.",
		upgrades=
		{
		}
	},
	spraycan =
	{
		name="Spray can",
		image="spraycan.png",
		desc="Make markings in the environment. Useful to help planning an intended path during escape.",
		upgrades=
		{
		}
	},
	extinguisher =
	{
		name="Fire extinguisher",
		image="extinguisher.png",
		desc="Safety first. Use this tool to put out fires.",
		upgrades=
		{
		}
	},
	blowtorch =
	{
		name="Blowtorch",
		image="blowtorch.png",
		desc="Cuts through metal, wood and plastic. Can occasionally set things on fire.",
		upgrades=
		{
			{ id="ammo", name="Fuel", desc="The number of seconds you can use it", default=20, max=60, step=10, price=100 },
		}
	},
	shotgun =
	{
		name="Shotgun",
		image="shotgun.png",
		desc="Short range tool, causes medium damage on most materials. Damage decreases with distance.",
		upgrades=
		{
			{ id="ammo", name="Rounds", desc="The number of shells you have at the start of a mission", default=12, max=96, step=12, price=200 },
			{ id="range", name="Range", desc="Maximum range for weapon.", default=20, max=60, step=20, price=300 },
			{ id="damage", name="Damage", desc="How much damage it makes.", default=3, max=5, step=1, price=400 },
		}
	},
	plank =
	{
		name="Plank",
		image="plank.png",
		desc="Wooden planks, used to attach objects, barricade doors or build structures and walkways.",
		upgrades=
		{
			{ id="ammo", name="Planks", desc="The number of planks you have at the start of a mission.", default=8, max=64, step=8, price=150 },
			{ id="width", name="Width", desc="The width of a plank", default=3, max=5, step=1, price=200 },
			{ id="length", name="Max length", desc="Maximum length of each plank", default=40, max=64, step=8, price=300 },
		}
	},
	pipebomb =
	{
		name="Pipe bomb",
		image="pipebomb.png",
		desc="Medium range, throwable explosive, medium blast and poor precision.",
		upgrades=
		{
			{ id="ammo", name="Rounds", desc="The number of bombs you have at the start of a mission", default=6, max=36, step=6, price=200 },
			{ id="damage", name="Blast", desc="How much damage it makes.", default=2, max=4, step=1, price=500 },
		}
	},
	gun =
	{
		name="Gun", 
		image="gun.png", 
		desc="Good for medium range precision shooting. Causes small damage on most materials within entire range.",
		upgrades=
		{
			{ id="ammo", name="Rounds", desc="The number of bullets you have at the start of a mission", default=6, max=36, step=6, price=200 },
			{ id="range", name="Range", desc="The maximum range", default=40, max=100, step=20, price=300 },
			{ id="damage", name="Damage", desc="How much damage a bullet makes", default=1, max=3, step=1, price=300 },
		}
	},
	bomb =
	{
		name="Bomb",
		image="bomb.png",
		desc="Timed bomb, attaches to objects and detonates in a large explosion after three seconds.",
		upgrades=
		{
			{ id="ammo", name="Rounds", desc="The number of bombs you have at the start of a mission", default=6, max=36, step=6, price=400 },
			{ id="damage", name="Blast", desc="How much damage it makes.", default=4, max=6, step=1, price=500 },
		}
	},
	rocket =
	{
		name="Rocket launcher",
		image="launcher.png",
		desc="Long range explosive, major blast and fair precision.",
		upgrades=
		{
			{ id="ammo", name="Rounds", desc="The number of rockets you have at the start of a mission", default=6, max=24, step=6, price=500 },
			{ id="damage", name="Blast", desc="How much damage it makes.", default=5, max=100, step=5, price=1 },
		}
	},
}

------------------------------------------------------------------------------
-- Ranks
------------------------------------------------------------------------------

gRanks =
{
	{score=0, name="Demolisher"},
	{score=5, name="Amateur", tool="blowtorch"},
	{score=10, name="Novice", tool="shotgun"},
	{score=15, name="Trespasser", tool="plank"},
	{score=20, name="Breaker", tool="pipebomb"},
	{score=30, name="Crook", tool="gun"},
	{score=40, name="Wrecker", tool="bomb"},
	{score=50, name="Ballistic", tool="rocket"},
	{score=60, name="Crackerjack", cash=1000},
	{score=70, name="Professional", cash=2000},
	{score=80, name="Expert", cash=3000},
	{score=90, name="Midnighter", cash=4000},
	{score=100, name="Virtuoso", cash=5000},
}


------------------------------------------------------------------------------
-- Sandbox levels
------------------------------------------------------------------------------

gSandbox = 
{
	{ id="lee_sandbox", level="lee", name="Lee Chemicals", image="menu/level/lee.png", file="lee.xml", layers="sandbox"},
	{ id="marina_sandbox", level="marina", name="Marina", image="menu/level/marina.png", file="marina.xml", layers="sandbox"},
	{ id="mansion_sandbox", level="mansion", name="Villa Gordon", image="menu/level/mansion.png", file="mansion.xml", layers="sandbox"},
	{ id="caveisland_sandbox", level="caveisland", name="Hollowrock", image="menu/level/caveisland.png", file="caveisland.xml", layers="sandbox"},
}
	


function startHub()
	local current = 0
	if GetInt("savegame.mission.mall_intro.score") > 0 then current = 1 end
	if GetInt("savegame.mission.lee_computers.score") > 0 then current = 2 end
	if GetInt("savegame.mission.lee_login.score") > 0 then current = 3 end
	if GetInt("savegame.mission.marina_demolish.score") > 0 then current = 4 end
	if GetInt("savegame.mission.marina_gps.score") > 0 or GetInt("savegame.mission.marina_cars.score") > 0 then current = 5 end
	if GetInt("savegame.mission.lee_safe.score") > 0 or GetInt("savegame.mission.mansion_pool.score") > 0 then current = 6 end
	if GetInt("savegame.mission.lee_tower.score") > 0 then current = 7 end
	if GetInt("savegame.mission.mansion_art.score") > 0 then current = 8 end
	if GetInt("savegame.mission.marina_art_back.score") > 0 then current = 9 end
	if GetInt("savegame.mission.mansion_fraud.score") > 0 then current = 10 end
	if GetInt("savegame.mission.caveisland_computers.score") > 0 then current = 11 end
	if GetInt("savegame.mission.mansion_safe.score") > 0 then current = 12 end
	if GetInt("savegame.mission.lee_powerplant.score") > 0 then current = 13 end
	if GetInt("savegame.mission.caveisland_propane.score") > 0 then current = 14 end
	if GetInt("savegame.mission.caveisland_dishes.score") > 0 then current = 15 end
	if GetInt("savegame.mission.frustrum_chase.score") > 0 then current = 16 end
	Command("game.startmission", "hub"..current, "hub.xml", "v"..current)
end
