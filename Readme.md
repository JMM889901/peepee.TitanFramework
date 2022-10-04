the peepeepoopoo mans TitanFramework
==
Basic framework for adding custom titans, needlessly overcomplicated but rpak and datatables has forced my hand (that and impatience)
Need help with usage or any suggestions just @The peepeepoopoo man#3301 on discord or in the northstar discord
Example script
--
```
global function ArchonUIInit
global function ArchonUIInitP2
void function ArchonUIInit(){
	RegisterNewItemInitCallback(ArchonUIInitP2)
	RegisterModdedTitan("Archon", "mp_titanweapon_arc_cannon", 
	"mp_titanweapon_shock_shield", "mp_titanweapon_tesla_node",
	"mp_titanweapon_charge_ball", "mp_titancore_storm_core", 
	"titan_atlas_stickybomb", "ion", 3, "TITAN_ION_PASSIVE",
	eItemTypes.TITAN_ION_EXECUTION
	)
	ArchonUIInitP2()
	
}
void function ArchonUIInitP2(){
	print("/////////GENERATING ITEMS FOR ARCHON")
	CreateGenericItem(999, eItemTypes.TITAN_ANTIRODEO, "mp_titanweapon_tesla_node", "Tesla node", "I am in pain", "Deploys a tesla node, dealing electrical damage to anything that gets too close", $"rui/titan_loadout/tactical/titan_tactical_rearm_menu", 0, false)
	CreateGenericItem(999, eItemTypes.TITAN_PRIMARY, "mp_titanweapon_arc_cannon", "Arc cannon", "The pain does not stop", "Charge and release a devastating burst of energy", $"ui/temp", 0, false)
	CreateGenericItem(999, eItemTypes.TITAN_CORE_ABILITY, "mp_titancore_storm_core", "Storm core", "AAAAAAAA", "Electricity go brrrrr", $"rui/titan_loadout/core/titan_core_flame_wave", 0, false)
	CreateGenericItem(999, eItemTypes.TITAN_ORDNANCE, "mp_titanweapon_shock_shield", "Shock shield", "Using static forces or some science stuff stop bullets", "Using static forces or some science shit stop bullets", $"ui/temp", 0, false)
	CreateGenericItem(999, eItemTypes.TITAN_SPECIAL, "mp_titanweapon_charge_ball", "Charge ball", "Using static forces or some science stuff stop bullets", "Ayo that ball do be kinda charged tho", $"ui/temp", 0, false)

	RegisterModdedTitanItems("Archon", "mp_titanweapon_arc_cannon", 
	"mp_titanweapon_shock_shield", "mp_titanweapon_tesla_node",
	"mp_titanweapon_charge_ball", "mp_titancore_storm_core", 
	"titan_atlas_stickybomb", "ion", 3, "TITAN_ION_PASSIVE",
	eItemTypes.TITAN_ION_EXECUTION
	)
}
```
Function args
--
```
    string Name,  <- name
    string Primary,  <- gun
    string Left, string Mid, <- left and right ability 
    string Right, string Core,  <- mid and core
    string BaseSetFile, <- setfile of basetitan
    string BaseName,  <- name of base titan
    int difficulty, <- costmetic, should be optional lol
    string PassiveTypeName, <- name of basetitan passive type (TITAN_ION_PASSIVE)
    int ExecutionType, <- literally not used ever
    string Melee = "melee_titan_punch_scorch",
    string Voice = "titanos_bt"
```
what is a base titan?
-----
A base titan is just the titan from which to get the persistent passives, animations, xp and various other things from.

This will be modified, simplified and improved, but idk here it is for now i guess 

Current known issues
-------
Currently lacks authentication for valid titan classes when setting from console, however this wont cause crashes, if a nonexistent titan is selected it should be fine, and loading with a nonexistent titan selected will only result in your titan name being wrong, the loadout should be correct

~~Due to passives all custom titans must make sure that the weapons and abilities support the mods that will be added by those passives, even if these mods do nothing you must have them or you will get a bitfield issue~~ Solved
