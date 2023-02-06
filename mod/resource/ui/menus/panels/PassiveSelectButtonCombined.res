"resource/ui/menus/panels/PassiveSelectButtonCombined.res"
{
	PassiveImage
	{
		ControlName RuiPanel
		wide 96
		tall 96
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
		wide 96
		tall 96
		
		Classname TitanLoadoutPanelButtonClass
		scriptID internalButton
		
		//navDown GridButton0x1
		//navRight GridButton1x0
		//navUp DummyTop
	}
	FullButton
    {
		ControlName				RuiButton
		InheritProperties		LoadoutButtonMedium
        classname				TitanLoadoutPanelButtonClass
        scriptID				"internalButton"
		wide 96
		tall 96

        navUp                 	ButtonPassive1
        navDown                	ButtonPassive3
        navLeft           	    ButtonFDTitanUpgrades
        navRight           	    ButtonShoulderBadge

        //pin_to_sibling			ButtonPassive1
        //pin_corner_to_sibling	TOP_RIGHT
        //pin_to_sibling_corner	BOTTOM_RIGHT
    }
}