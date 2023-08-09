the peepeepoopoo mans TitanFramework
==

If you have having issues with manual install make sure you delete any previous versions (including jmm889901.titanframework) before updating

This is an experimental mod and any crash logs will be appreciated, i will aim to keep backwards compatability as much as possible to make updating optional

Confused with how to use the mod, have suggestions or found a bug, please DM me `the_peepeepoopoo_man.` on discord

framework for adding custom titans

Using the mod
--

To use the mod, install a compatible titan mod such as Archon or Chimera, Go to the titan loadout selection menu and select "Custom loadouts", Create a new loadout, within this loadout click the "Select Titan" button to bring up the titan selection.

Example script
--

```cpp
global function ChimeraSetup
void function ChimeraSetup()
{
 
 ModdedTitanData Chimera
 Chimera.Name = "#DEFAULT_TITAN_CHIMERA"
 Chimera.Tag = "Atlas" //The tag is displayed in the selection menu if groupsettings.showtagasprefix /suffix is enabled
 //can be used to give an alternate name to a titan in selection vs actual use
 Chimera.Description = "This is the description for Chimera"
 Chimera.BaseSetFile = "titan_atlas_tracker"
 Chimera.BaseName = "tone" //we will use monarchs model
 Chimera.altChassisType = frameworkAltChassisMethod.ALT_TITAN
 Chimera.titanHints = [
 "#DEATH_HINT_CHIMERA_001",
 "#DEATH_HINT_CHIMERA_002",
 "#DEATH_HINT_CHIMERA_003",
 "#DEATH_HINT_CHIMERA_004",
 "#DEATH_HINT_CHIMERA_005",
 "#DEATH_HINT_CHIMERA_006"
 ]
 #if UI
 Chimera.loadoutsMenuControllerFunc = ChimeraPreviewController
 #endif
 Chimera.groupSettings.Name = "#CHIMERACATEGORY"
 Chimera.groupSettings.showTagAsSuffix = true
 Chimera.groupSettings.showName = false //Only show the chassis type in selection menu


 ModdedTitanWeaponAbilityData GenericWeaponMount
 GenericWeaponMount.weaponName = "mp_titanweapon_xo16_vanguard" //Custom weapons can actually use default weapons as the item
 Chimera.Primary = GenericWeaponMount

 ModdedTitanWeaponAbilityData GenericDefensiveMount
 GenericDefensiveMount.weaponName = "mp_titanability_particle_wall"
 Chimera.Left = GenericDefensiveMount

 ModdedTitanWeaponAbilityData DefaultCore
 DefaultCore.weaponName = "mp_titancore_salvo_core" //We only have 6 passive slots, 2 are universal and 4 are titan unique
    //So we can only really use 4 Generic slots meaning we cant make all items (gun, core, abilities) generic 
 Chimera.Core = DefaultCore

 ModdedTitanWeaponAbilityData GenericOffensiveMount
 GenericOffensiveMount.weaponName = "mp_titanweapon_salvo_rockets"
 Chimera.Right = GenericOffensiveMount

 ModdedTitanWeaponAbilityData GenricUtilityMount
 GenricUtilityMount.weaponName = "mp_titanability_phase_dash"

 Chimera.Mid = GenricUtilityMount

 CustomPersistentVar Primary
 Primary.property = "primary"
 Primary.defaultValue = "mp_titanweapon_xo16_vanguard" //<- this value is actually not err, used. i need to setup "true" custom values first
 Primary.passiveItemsMethod = eItemsMethod.FIND_ALL_TYPE //FIND_ALL_TYPE will setup all items matching itemTypeOverride as accepted items
 Primary.itemTypeOverride = eItemTypes.TITAN_PRIMARY

 Chimera.ValidationOverrides["primary"] <- Primary

    /*
    ========Defining Passive4, or Defensive=======
    */

 CustomPersistentVar Defensive
 Defensive.property = "special"
 Defensive.defaultValue = "mp_titanability_particle_wall"
 Defensive.passiveItemsMethod = eItemsMethod.FIND_FORCE//Forces the game to use the exact list of refs we provide
 //In this case FIND Seems like it would work initially, however mp_titanweapon_stun_laser is also of type TITAN_ORDNANCE, but is unique in that it fits a different slot
 //therefor it must be in the utility slot
 //however FIND For this slot would still discover it, and add it to the list of accepted items
 Defensive.itemTypeOverride = eItemTypes.TITAN_SPECIAL
 Defensive.validationFunc = IsValidChimeraSpecial

 Chimera.ValidationOverrides["special"] <- Defensive

 ModdedPassiveData ParticleWall
 ParticleWall.Name = "mp_titanability_particle_wall"//Basegame localised names/descriptions can be used
 //This may cause issues with other mods that do this as these names are both display names
 //and internal names, This may change in the future 
 ParticleWall.description = "#WPN_TITAN_SHIELD_WALL_DESC" 
 ParticleWall.image = $"rui/titan_loadout/defensive/titan_defensive_particle_wall_menu"
 Chimera.ValidationOverrides["special"].acceptedItems.append(ParticleWall)

 ModdedPassiveData HeatShield
 HeatShield.Name = "mp_titanweapon_heat_shield"
 HeatShield.description = "#WPN_TITAN_HEAT_SHIELD_DESC"
 HeatShield.image = $"rui/titan_loadout/defensive/titan_defensive_heat_shield_menu"
 Chimera.ValidationOverrides["special"].acceptedItems.append(HeatShield)

 ModdedPassiveData VortexShield
 VortexShield.Name = "mp_titanweapon_vortex_shield_ion"
 VortexShield.description = "WPN_TITAN_VORTEX_SHIELD_DESC"
 VortexShield.image = $"rui/titan_loadout/defensive/titan_defensive_vortex_menu"
 Chimera.ValidationOverrides["special"].acceptedItems.append(VortexShield)
    /*
    =======Defining Passive5, or utility==========
    */

 CustomPersistentVar Utility
 Utility.property = "antirodeo"
 Utility.defaultValue = "mp_titanability_phase_dash"
 Utility.passiveItemsMethod = eItemsMethod.FIND_FORCE //Not all abilities we have in this slot share a type, so we use FIND_FORCE to specify an exact list of refs
 Utility.itemTypeOverride = eItemTypes.TITAN_ANTIRODEO
 Utility.validationFunc = IsValidChimeraAntirodeo

 Chimera.ValidationOverrides["antirodeo"] <- Utility

 ModdedPassiveData Siphon
 Siphon.Name = "mp_titanweapon_stun_laser"
 Siphon.description = "WPN_TITAN_STUN_LASER_DESC"
 Siphon.image = $"rui/titan_loadout/defensive/titan_defensive_energy_siphon_menu"
 Chimera.ValidationOverrides["antirodeo"].acceptedItems.append(Siphon)

 ModdedPassiveData PhaseDash
 PhaseDash.Name = "mp_titanability_phase_dash"
 PhaseDash.description = "WPN_TITAN_PHASE_DASH_DESC"
 PhaseDash.image = $"rui/titan_loadout/tactical/titan_tactical_phase_dash_menu"
 Chimera.ValidationOverrides["antirodeo"].acceptedItems.append(PhaseDash)

 ModdedPassiveData hover
 hover.Name = "mp_titanability_hover"
 hover.description = "WPN_TITAN_HOVER_DESC"
 hover.image = $"rui/titan_loadout/tactical/titan_tactical_hover_menu"
 Chimera.ValidationOverrides["antirodeo"].acceptedItems.append(hover)

 ModdedPassiveData tripwire
 tripwire.Name = "mp_titanability_laser_trip"
 tripwire.description = "WPN_TITAN_TRIPWIRE_DESC"
 tripwire.image = $"rui/titan_loadout/tactical/titan_tactical_laser_tripwire_menu"
 Chimera.ValidationOverrides["antirodeo"].acceptedItems.append(tripwire)
 
 /*
 =======Defining Passive6, or Offensive========
 */
 CustomPersistentVar ordnanceSlot
 ordnanceSlot.property = "ordnance"
 ordnanceSlot.defaultValue = "mp_titanweapon_laser_lite"
 ordnanceSlot.passiveItemsMethod = eItemsMethod.FIND
 ordnanceSlot.itemTypeOverride = eItemTypes.TITAN_ORDNANCE
 ordnanceSlot.validationFunc = IsValidChimeraOrdnance

 Chimera.ValidationOverrides["ordnance"] <- ordnanceSlot


 ModdedPassiveData RocketPod
 RocketPod.Name = "mp_titanweapon_salvo_rockets"
 RocketPod.description = "WPN_TITAN_SALVO_ROCKETS_DESC"
 RocketPod.image = $"rui/titan_loadout/ordnance/tracking_rockets_menu"
 Chimera.ValidationOverrides["ordnance"].acceptedItems.append(RocketPod)

 ModdedPassiveData FlameWall
 FlameWall.Name = "mp_titanweapon_flame_wall"
 FlameWall.description = "WPN_TITAN_FIREWALL_DESC"
 FlameWall.image = $"rui/titan_loadout/ordnance/flame_wall_menu"
 Chimera.ValidationOverrides["ordnance"].acceptedItems.append(FlameWall)
 
 ModdedPassiveData Laser
 Laser.Name = "mp_titanweapon_laser_lite"
 Laser.description = "WPN_TITAN_LASER_LITE_DESC"
 Laser.image = $"rui/titan_loadout/ordnance/laser_shot_menu"
 Chimera.ValidationOverrides["ordnance"].acceptedItems.append(Laser)

 ModdedPassiveData DumbfireRockets
 DumbfireRockets.Name = "mp_titanweapon_dumbfire_rockets"
 DumbfireRockets.description = "WPN_TITAN_DUMB_SHOULDER_ROCKETS_DESC"
 DumbfireRockets.image = $"rui/titan_loadout/ordnance/cluster_missile_menu"
 Chimera.ValidationOverrides["ordnance"].acceptedItems.append(DumbfireRockets)

 ModdedPassiveData arcWave
 arcWave.Name = "mp_titanweapon_arc_wave"
 arcWave.description = "WPN_TITAN_ARC_WAVE_DESC"
 arcWave.image = $"rui/titan_loadout/ordnance/arc_wave_menu"
 Chimera.ValidationOverrides["ordnance"].acceptedItems.append(arcWave)

 CustomPersistentVar coreAbility
 coreAbility.property = "coreAbility"
 coreAbility.defaultValue = "mp_titancore_salvo_core"
 coreAbility.passiveItemsMethod = eItemsMethod.FIND //These all match the same type, but we dont want ALL titan cores 
 coreAbility.itemTypeOverride = eItemTypes.TITAN_CORE_ABILITY
 coreAbility.validationFunc = IsValidChimeraCore

 Chimera.ValidationOverrides["coreAbility"] <- coreAbility

 ModdedPassiveData SalvoCore
 SalvoCore.Name = "mp_titancore_salvo_core"
 SalvoCore.customIcon = true //Icons arent actually custom, but hardcoded ui atlas' arent meant to display these icons on passive icons
 Chimera.ValidationOverrides["coreAbility"].acceptedItems.append(SalvoCore)

 ModdedPassiveData LaserCore
 LaserCore.Name = "mp_titancore_laser_cannon"
 LaserCore.customIcon = true
 Chimera.ValidationOverrides["coreAbility"].acceptedItems.append(LaserCore)

 ModdedPassiveData FlameCore
 FlameCore.Name = "mp_titancore_flame_wave"
 FlameCore.customIcon = true
 Chimera.ValidationOverrides["coreAbility"].acceptedItems.append(FlameCore)

 ModdedPassiveData DashCore
 DashCore.Name = "mp_titancore_dash_core"
 DashCore.customIcon = true
 Chimera.ValidationOverrides["coreAbility"].acceptedItems.append(DashCore)

 ModdedPassiveData ampCore
 ampCore.Name = "mp_titancore_amp_core"
 ampCore.customIcon = true
 Chimera.ValidationOverrides["coreAbility"].acceptedItems.append(ampCore)

 FrameworkChassisStruct Ogre
 Ogre.name = "Ogre"
 Ogre.setFile = "titan_ogre_minigun"
 Ogre.executionAnimationType = 57
 #if CLIENT || SERVER
 PrecacheModel($"models/titans/heavy/titan_heavy_ogre_base.mdl")
 #endif
 Ogre.modelOverride = $"models/titans/heavy/titan_heavy_ogre_base.mdl"
 
 Chimera.altChassisArray.append(Ogre)

 FrameworkChassisStruct Atlas 
 Atlas.name = "Atlas"
 Atlas.setFile = "titan_atlas_tracker"
 Atlas.executionAnimationType = 55
 //#if CLIENT || SERVER //Removed temporarily because animations crash server
 //PrecacheModel($"models/titans/medium/titan_medium_atlas_base.mdl")
 //#endif
 //Atlas.modelOverride = $"models/titans/medium/titan_medium_atlas_base.mdl"

 Chimera.altChassisArray.append(Atlas)

 FrameworkChassisStruct Stryder
 Stryder.name = "Stryder"
 Stryder.setFile = "titan_stryder_leadwall"
 Stryder.executionAnimationType = 52
 #if CLIENT || SERVER
 PrecacheModel($"models/titans/light/titan_light_stryder_base.mdl")
 #endif
 Stryder.modelOverride = $"models/titans/light/titan_light_stryder_base.mdl"

 Chimera.altChassisArray.append(Stryder)

 CreateModdedTitanSimple(Chimera)//Ah yes """"""""""""Simple""""""""""""


 #if CLIENT
 RegisterTitanAudioFunctionByTitan("#DEFAULT_TITAN_CHIMERA", chimeraHandleVoice)
 #endif

}
```

what is a base titan?
-----

A base titan is just the titan from which to get the persistent passives, animations, xp and various other things from.

Does framework break basegame persistence?
---------

It should not, framework uses its own standalone persistence system built using safe IO

If persistence breaks for any reason simply go to `Titanfall2\local_mod_data` and remove every file, this will reset titanframework back to its base state, while preserving your vanilla loadouts

Debugging
--

To help debugging broken persistence data it can be helpful to run the command 

`titanFrameworkDevPrintsEnabled 1` 

Changelog ish
-------

Now uses a fully custom persistence system for storing loadouts using local JSON instead of trying to use basegame persistence

This means:

. Unlimited titan loadouts

. Titans no longer have restrictions on how many passives they can load

. Titans can have arbitrary persistent vars allowing more or different changable values than would otherwise be allowed 

This also leads onto the main new **feature**

Custom pilot equipment
-

Titanframework now supports custom custom grenades, tacticals and guns, this is done using overrides rathere than creating further loadouts just for modded content

Other notable features

Remade titan UI to facilitate all the new additions, Titans can now be accessed from the "Custom loadouts" footer button on the bottom of the titan menu
