"resource/ui/menus/panels/PassiveSelectImageCombinedSmall.res"
{
	PassiveImageMod
	{
		ControlName RuiPanel
		wide 64
		tall 64
		visible 1
		scaleImage 1
		zpos 0
		classname				TitanPassiveIconClass
		// Hud_GetRui() requires this to work
		rui                     "ui/loadout_image_medium.rpak"
	}
	PassiveImage
    {
		ControlName				RuiPanel
		InheritProperties		LoadoutButtonMedium
		rui                     "ui/loadout_image_medium.rpak"
        classname				TitanPassiveIconClass
        scriptID				"internalButton"
		wide 64
		tall 64

        navUp                 	ButtonPassive1
        navDown                	ButtonPassive3
        navLeft           	    ButtonFDTitanUpgrades
        navRight           	    ButtonShoulderBadge

        //pin_to_sibling			ButtonPassive1
        //pin_corner_to_sibling	TOP_RIGHT
        //pin_to_sibling_corner	BOTTOM_RIGHT
    }
}