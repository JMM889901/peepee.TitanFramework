"resource/ui/menus/panels/PassiveSelectButton.res"
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
		
		Classname PassiveButton
		scriptID internalButton
		
		//navDown GridButton0x1
		//navRight GridButton1x0
		//navUp DummyTop
	}
}