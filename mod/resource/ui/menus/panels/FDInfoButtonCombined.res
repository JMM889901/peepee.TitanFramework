"resource/ui/menus/panels/FDInfoButtonCombined.res"
{//I hate that this is even needed
	PassiveImage
	{
		ControlName RuiPanel
		wide 75
		tall 75
		visible 1
		scaleImage 1
		zpos 0

		// Hud_GetRui() requires this to work
		rui                     "ui/loadout_image_medium.rpak"
	}
	PassiveButton
	{
		ControlName RuiButton
		InheritProperties RuiSmallButton
		wide 75
		tall 75
		
		Classname FDPanelButtonClass
		scriptID				internalButton
		
		//navDown GridButton0x1
		//navRight GridButton1x0
		//navUp DummyTop
	}
	FullButton
    {
		ControlName				RuiButton
		InheritProperties		LoadoutButtonMedium
        classname				FDPanelButtonClass
        scriptID				internalButton
		wide 75
		tall 75

        navUp                 	ButtonPassive1
        navDown                	ButtonPassive3
        navLeft           	    ButtonFDTitanUpgrades
        navRight           	    ButtonShoulderBadge

        //pin_to_sibling			ButtonPassive1
        //pin_corner_to_sibling	TOP_RIGHT
        //pin_to_sibling_corner	BOTTOM_RIGHT
    }
}