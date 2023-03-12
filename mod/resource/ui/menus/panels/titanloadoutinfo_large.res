"resource/ui/menus/panels/titanloadoutinfo_large.res"
{
	ImgTopBar
	{
		ControlName				ImagePanel
		ypos					50
		wide					250			
		InheritProperties		MenuTopBar
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
	    ypos					50
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
	    ypos					10
        pin_to_sibling          passive1
	    pin_corner_to_sibling	TOP_RIGHT
	    pin_to_sibling_corner	BOTTOM_RIGHT
	}
    passive3
	{
		ControlName				CNestedPanel
		controlSettingsFile		"resource/ui/menus/panels/PassiveSelectImageCombinedSmall.res"
		wide 64
		tall 64
        classname				TitanLoadoutPassiveCombinedImageClass
	    scriptID				"passive3"
	    ypos					10
        pin_to_sibling          passive2
	    pin_corner_to_sibling	TOP_RIGHT
	    pin_to_sibling_corner	BOTTOM_RIGHT
	}
    passive4
	{
		ControlName				CNestedPanel
		controlSettingsFile		"resource/ui/menus/panels/PassiveSelectImageCombinedSmall.res"
		wide 64
		tall 64
        classname				TitanLoadoutPassiveCombinedImageClass
	    scriptID				"passive4"
	    ypos					50
        pin_to_sibling          ImgTopBar
	    pin_corner_to_sibling	TOP_RIGHT
	    pin_to_sibling_corner	TOP_RIGHT
	}
    passive5
	{
		ControlName				CNestedPanel
		controlSettingsFile		"resource/ui/menus/panels/PassiveSelectImageCombinedSmall.res"
		wide 64
		tall 64
        classname				TitanLoadoutPassiveCombinedImageClass
	    scriptID				"passive5"
	    ypos					10
        pin_to_sibling          passive4
	    pin_corner_to_sibling	TOP_RIGHT
	    pin_to_sibling_corner	BOTTOM_RIGHT
	}
    passive6
	{
		ControlName				CNestedPanel
		controlSettingsFile		"resource/ui/menus/panels/PassiveSelectImageCombinedSmall.res"
		wide 64
		tall 64
        classname				TitanLoadoutPassiveCombinedImageClass
	    scriptID				"passive6"
	    ypos					10
        pin_to_sibling          passive5
	    pin_corner_to_sibling	TOP_RIGHT
	    pin_to_sibling_corner	BOTTOM_RIGHT
	}

}