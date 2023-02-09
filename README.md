the peepeepoopoo mans TitanFramework
==
Basic framework for adding custom titans


Need help with usage or any suggestions just @The peepeepoopoo man#3301 on discord or in the northstar discord


Example script
--
```
	ModdedTitanData Chimera
	Chimera.Name = "Chimera"
	Chimera.Description = "This is the description for Chimera"
	Chimera.BaseSetFile = "titan_atlas_vanguard"
	Chimera.BaseName = "vanguard" //we will use monarchs model

	ModdedTitanWeaponAbilityData GenericWeaponMount
	GenericWeaponMount.custom = true //when this is false titanframework will not create items, useful if you want to use default items
	GenericWeaponMount.displayName = "Generic weapon mount"
	GenericWeaponMount.weaponName = "mp_titanweapon_xo16_vanguard" //Custom weapons can actually use default weapons as the item
    // the rest of these just effect descriptions and such, this is ideal if you want to create a generic slot, which chimera does
    //However when doing so with the weapon remember that this weapon is what will be displayed in the menu
	GenericWeaponMount.description = "You have hands, hands hold things, things include: guns"
	Chimera.Primary = GenericWeaponMount

	ModdedTitanWeaponAbilityData GenericDefensiveMount
	GenericDefensiveMount.custom = true
	GenericDefensiveMount.displayName = "Generic Defensive mount"
	GenericDefensiveMount.weaponName = "mp_titanability_particle_wall"
	GenericDefensiveMount.description = "Chimera has a number of defensive options at its disposal"
	Chimera.Left = GenericDefensiveMount

	ModdedTitanWeaponAbilityData SalvoCore
	SalvoCore.weaponName = "mp_titancore_salvo_core" //We only have 6 passive slots, 2 are universal and 4 are titan unique
    //So we can only really use 4 Generic slots meaning we cant make all items (gun, core, abilities) generic 
	Chimera.Core = SalvoCore

	ModdedTitanWeaponAbilityData GenericOffensiveMount
	GenericOffensiveMount.custom = true
	GenericOffensiveMount.displayName = "Generic Offensive mount"
	GenericOffensiveMount.weaponName = "mp_titanweapon_flame_wall"
	GenericOffensiveMount.description = "A multipurpose mount designed for a variety of weapons"
	Chimera.Right = GenericOffensiveMount

	ModdedTitanWeaponAbilityData GenricUtilityMount
	GenricUtilityMount.custom = true
	GenricUtilityMount.displayName = "Genric Utility Mount"
	GenricUtilityMount.weaponName = "mp_titanability_phase_dash"
	GenricUtilityMount.description = "A variety of utility options are available to chimeras adaptive systems"
	Chimera.Mid = GenricUtilityMount

    /*
    Chimera uses passives to select what goes on its mounts, passive2 (titan kit) is the weapon, 4, 5 and 6 are the left middle and right abilities respectively
    */


    /*
    ======IMPORTANT======
    titanFramework uses persitence masking to map real passives in persistent data to the "fake" ones created here
    this means the number of custom passives in a slot cannot exceed the number of default passives that exist
    I err, dont know what will happen if you do this. Probably an index error 
    */
    ModdedPassiveData PredatorCannon //Define a new passive to equip the predator cannon
    PredatorCannon.Name = "Predator Cannon"
    PredatorCannon.description = "BRRRRRT"
    PredatorCannon.image = $"r2_ui/menus/loadout_icons/titan_weapon/titan_weapon_predator"
    Chimera.passive2Array.append(PredatorCannon) //If nothing is registered in passive2 it will 
    //display the defaults passivesfor the base titan(vanguard in this case))

    ModdedPassiveData xo16
    xo16.Name = "XO16"
    xo16.description = "Standard battle rifle"
    xo16.image = $"r2_ui/menus/loadout_icons/titan_weapon/titan_weapon_xo16"
    Chimera.passive2Array.append(xo16)


    ModdedPassiveData leadWall
    leadWall.Name = "Leadwall"
    leadWall.description = "Shotgun"
    leadWall.image = $"r2_ui/menus/loadout_icons/titan_weapon/titan_weapon_leadwall"
    Chimera.passive2Array.append(leadWall)


    ModdedPassiveData RocketLauncher
    RocketLauncher.Name = "Rocket launcher"
    RocketLauncher.description ="Does what it says on the tin"
    RocketLauncher.image = $"r2_ui/menus/loadout_icons/titan_weapon/titan_weapon_quad"
    Chimera.passive2Array.append(RocketLauncher)


    /*
    ========Defining Passive4, or Defensive=======
    */
	ModdedPassiveData ParticleWall
	ParticleWall.Name = "#WPN_TITAN_SHIELD_WALL"//Basegame localised names/descriptions can be used
	//This may cause issues with other mods that do this as these names are both display names
	//and internal names, This may change in the future 
	ParticleWall.description = "#WPN_TITAN_SHIELD_WALL_DESC" 
	ParticleWall.image = $"rui/titan_loadout/defensive/titan_defensive_particle_wall_menu"
	Chimera.passive4Array.append(ParticleWall)

	ModdedPassiveData HeatShield
	HeatShield.Name = "#WPN_TITAN_HEAT_SHIELD"
	HeatShield.description = "#WPN_TITAN_HEAT_SHIELD_DESC"
	HeatShield.image = $"rui/titan_loadout/defensive/titan_defensive_heat_shield_menu"
	Chimera.passive4Array.append(HeatShield)

	ModdedPassiveData VortexShield
	VortexShield.Name = "#WPN_TITAN_VORTEX_SHIELD"
	VortexShield.description = "WPN_TITAN_VORTEX_SHIELD_DESC"
	VortexShield.image = $"rui/titan_loadout/defensive/titan_defensive_vortex_menu"
	Chimera.passive4Array.append(VortexShield)
    /*
    =======Defining Passive5, or utility==========
    */
	ModdedPassiveData Siphon
	Siphon.Name = "#WPN_TITAN_STUN_LASER"
	Siphon.description = "WPN_TITAN_STUN_LASER_DESC"
	Siphon.image = $"rui/titan_loadout/defensive/titan_defensive_energy_siphon_menu"
	Chimera.passive5Array.append(Siphon)

	ModdedPassiveData PhaseDash
	PhaseDash.Name = "#WPN_TITAN_PHASE_DASH"
	PhaseDash.description = "WPN_TITAN_PHASE_DASH_DESC"
	PhaseDash.image = $"rui/titan_loadout/tactical/titan_tactical_phase_dash_menu"
	Chimera.passive5Array.append(PhaseDash)
	//You do not need to have as many custom passives as default ones, just make sure you dont have more
	/*
	=======Defining Passive6, or Offensive========
	*/
	ModdedPassiveData RocketPod
	RocketPod.Name = "#WPN_TITAN_SALVO_ROCKETS"
	RocketPod.description = "WPN_TITAN_SALVO_ROCKETS_DESC"
	RocketPod.image = $"rui/titan_loadout/ordnance/tracking_rockets_menu"
	Chimera.passive6Array.append(RocketPod)

	ModdedPassiveData FlameWall
	FlameWall.Name = "#WPN_TITAN_FIREWALL"
	FlameWall.description = "WPN_TITAN_FIREWALL_DESC"
	FlameWall.image = $"rui/titan_loadout/ordnance/flame_wall_menu"
	Chimera.passive6Array.append(FlameWall)
	
	ModdedPassiveData Laser
	Laser.Name = "#WPN_TITAN_LASER_LITE"
	Laser.description = "WPN_TITAN_LASER_LITE_DESC"
	Laser.image = $"rui/titan_loadout/ordnance/laser_shot_menu"
	Chimera.passive6Array.append(Laser)

	CreateModdedTitanSimple(Chimera)//Ah yes """"""""""""Simple""""""""""""
```
Function args
--
what is a base titan?
-----
A base titan is just the titan from which to get the persistent passives, animations, xp and various other things from.

This will be modified, simplified and improved, but idk here it is for now i guess 

Changelog ish
-------


Simplified registering titans using fancy structs instead of a comically long function
Titan names appear above heads correctly
Prints behind convar
More control for custom items, can create "fake" items that are not given to the player to allow you to give through script
Titans can now be prime titans
Index differences between server/client no longer make it impossible to select the correct titan and equip passives
Select titan button is more obvious
No longer tries to assign bubbleshield in the kit slot on first startup
Populating default titans from resetpersistence should work now
Populating default titans no longer leaves titanfall and titan general passive slots empty
Aegis upgrades mode no longer causes a crash due to no icon (hopefully)
LTS no longer crashes from having a teammate select a modded titan
LTS now displays titan names correctly 
Added support for custom hints, stat pips (difficulty, health, damage etc.) and titan descriptions
settitanloadoutremote now validates that the titan does infact exist before allowing players to select it
Titan loadouts now generate correctly from first time use instead of waiting until you join a server

Special thanks to Dinorush and GalacticMoblin for creating the titans used to test as well as feature suggestions, and Spoon for actually understanding how ui and persistence works unlike myself 