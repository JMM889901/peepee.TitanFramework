"resource/ui/menus/panels/titanloadoutinfo_large.res"
{
	loadoutName
	{
		ControlName				Label
		auto_wide_tocontents 	1
		tall					50
		visible					1
		font					DefaultBold_38
		allcaps					0
		fgcolor_override		"255 255 255 255"
		classname				loadoutName
	}
	ImgTopBar
	{
		ControlName				ImagePanel
		ypos					50
		wide					250			
		InheritProperties		MenuTopBar
	}
	titanName
	{
		ControlName				Label
		auto_wide_tocontents 	1
		tall					30
		visible					1
		font					DefaultBold_30
		allcaps					1
		fgcolor_override		"255 255 255 255"
		pin_to_sibling          ImgTopBar
	    pin_corner_to_sibling	TOP_LEFT
	    pin_to_sibling_corner	TOP_LEFT
		classname				titanName
	}
	TitanIcon
	{
		ControlName 			RuiPanel
		wide					50
		tall					50
		pin_to_sibling			ImgTopBar
		pin_corner_to_sibling	BOTTOM_RIGHT
		pin_to_sibling_corner	TOP_RIGHT
		visible					1
		rui 					"ui/basic_image_premul.rpak"
		scaleImage				1
	}
	passive1
	{
		ControlName				CNestedPanel
		controlSettingsFile		"resource/ui/menus/panels/PassiveSelectImageCombinedSmall.res"
		wide 64
		tall 64
        classname				TitanLoadoutPassiveCombinedImageClass
	    scriptID				"passive1"
	    ypos					-50
        pin_to_sibling          ImgTopBar
	    pin_corner_to_sibling	TOP_LEFT
	    pin_to_sibling_corner	TOP_LEFT
	}
    passive2
	{
		ControlName				CNestedPanel
		controlSettingsFile		"resource/ui/menus/panels/PassiveSelectImageCombinedSmall.res"
		wide 64
		tall 64
        classname				TitanLoadoutPassiveCombinedImageClass
	    scriptID				"passive2"
	    xpos					10
        pin_to_sibling          passive1
	    pin_corner_to_sibling	TOP_LEFT
	    pin_to_sibling_corner	TOP_RIGHT
	}
    passive3
	{
		ControlName				CNestedPanel
		controlSettingsFile		"resource/ui/menus/panels/PassiveSelectImageCombinedSmall.res"
		wide 64
		tall 64
        classname				TitanLoadoutPassiveCombinedImageClass
	    scriptID				"passive3"
	    xpos					10
        pin_to_sibling          passive2
	    pin_corner_to_sibling	TOP_LEFT
	    pin_to_sibling_corner	TOP_RIGHT
	}
    passive4
	{
		ControlName				CNestedPanel
		controlSettingsFile		"resource/ui/menus/panels/PassiveSelectImageCombinedSmall.res"
		wide 64
		tall 64
        classname				TitanLoadoutPassiveCombinedImageClass
	    scriptID				"passive4"
	    ypos					-130
        pin_to_sibling          ImgTopBar
	    pin_corner_to_sibling	TOP_LEFT
	    pin_to_sibling_corner	TOP_LEFT
	}
    passive5
	{
		ControlName				CNestedPanel
		controlSettingsFile		"resource/ui/menus/panels/PassiveSelectImageCombinedSmall.res"
		wide 64
		tall 64
        classname				TitanLoadoutPassiveCombinedImageClass
	    scriptID				"passive5"
	    xpos					10
        pin_to_sibling          passive4
	    pin_corner_to_sibling	TOP_LEFT
	    pin_to_sibling_corner	TOP_RIGHT
	}
    passive6
	{
		ControlName				CNestedPanel
		controlSettingsFile		"resource/ui/menus/panels/PassiveSelectImageCombinedSmall.res"
		wide 64
		tall 64
        classname				TitanLoadoutPassiveCombinedImageClass
	    scriptID				"passive6"
	    xpos					10
        pin_to_sibling          passive5
	    pin_corner_to_sibling	TOP_LEFT
	    pin_to_sibling_corner	TOP_RIGHT
	}

}