"resource/ui/menus/panels/FDInfoButtonCombinedSmall.res"
{//I hate that this is even needed
	PassiveImage
	{
		ControlName RuiPanel
		wide 48
		tall 48
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
		wide 48
		tall 48
		
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
		wide 48
		tall 48

        navUp                 	ButtonPassive1
        navDown                	ButtonPassive3
        navLeft           	    ButtonFDTitanUpgrades
        navRight           	    ButtonShoulderBadge

        //pin_to_sibling			ButtonPassive1
        //pin_corner_to_sibling	TOP_RIGHT
        //pin_to_sibling_corner	BOTTOM_RIGHT
    }
}