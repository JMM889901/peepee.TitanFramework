"resource/ui/menus/panels/titanproperties.res"
{
	TitanLoadoutBG
	{
		ControlName				RuiPanel
		classname				"RuiBG"
		xpos 					0
		ypos 					0
		wide					800
		tall					500
		visible					1
		scaleImage				1
		rui 					"ui/basic_image.rpak"
		drawColor				"0 0 0 120"
	}

	ImgTitanCoreIcon
	{
		ControlName				RuiPanel
		InheritProperties		LoadoutButtonMedium
		classname				"TitanLoadoutPanelImageClass HideWhenLocked"
		scriptID                "coreAbility"
        rui                     "ui/loadout_image_medium.rpak"
		xpos 					-128
		ypos 					-10

		pin_to_sibling			TitanLoadoutBG
		pin_corner_to_sibling	TOP_LEFT
		pin_to_sibling_corner	TOP_LEFT
	}

	CoreHint
	{
		ControlName				Label
		classname				"CoreHint LoadoutHintLabel"
		textAlignment				center
		ypos					0
		xpos					0
		wide 					128
		auto_wide_tocontents	0
		auto_tall_tocontents 	1
		visible                 1
		font					Default_26
		labelText				""
        fgcolor_override        "255 255 255 255"

		pin_to_sibling			ImgTitanCoreIcon
		pin_corner_to_sibling	RIGHT
		pin_to_sibling_corner	LEFT
		activeInputExclusivePaint		gamepad
	}

	CoreHintPC
	{
		ControlName				Label
		classname				"LoadoutHintLabel"
		textAlignment				center
		ypos					0
		xpos					0
		wide 					128
		auto_wide_tocontents	0
		auto_tall_tocontents 	1
		visible                 1
		font					Default_26
		labelText				"%+ability 1%"
        fgcolor_override        "255 255 255 255"

		pin_to_sibling			CoreHint
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
		activeInputExclusivePaint		keyboard
	}

	CoreName
	{
		ControlName				Label
		classname				"TitanCoreName HideWhenLocked"
		xpos                    10
		auto_wide_tocontents	1
		auto_tall_tocontents 	1
		visible					1
		font					Default_28
		allcaps					1
		labelText				""
		fgcolor_override        "254 184 0 255"

		pin_to_sibling			ImgTitanCoreIcon
		pin_corner_to_sibling	TOP_LEFT
		pin_to_sibling_corner	TOP_RIGHT
	}

	LblTitanCoreDesc
	{
		ControlName				Label
		InheritProperties		AbilityDesc
		ypos					-5
		classname				"TitanCoreLongDesc HideWhenLocked"
		xpos 					-20
		wide 					530
		tall 					70
		fgcolor_override        "254 184 0 200"
		font 					Default_28_ShadowGlow

		pin_to_sibling			CoreName
		pin_corner_to_sibling	TOP_LEFT
		pin_to_sibling_corner	BOTTOM_LEFT
	}

    ButtonCore
    {
        ControlName				RuiButton
        InheritProperties		RuiSmallButton
        wide                    658
        tall                    90

        pin_to_sibling			ImgTitanCoreIcon
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_LEFT
        scriptID                "coreAbility"
        xpos                    10
        ypos                    1
        navUp					ButtonPrimary
        navDown					ButtonOrdnance
        classname               TitanPropertySelectionButton
        visible					0
        //tabPosition             0
    }

	ImgTitanOrdnanceIcon
	{
		ControlName				RuiPanel
		InheritProperties		LoadoutButtonMedium
		classname				"TitanLoadoutPanelImageClass HideWhenLocked"
		scriptID                "ordnance"
        rui                     "ui/loadout_image_medium.rpak"

		pin_to_sibling			ImgTitanCoreIcon
		pin_corner_to_sibling	TOP_LEFT
		pin_to_sibling_corner	BOTTOM_LEFT
	}

	OrdnanceHint
	{
		ControlName				Label
		classname				"OrdnanceHint LoadoutHintLabel"
		textAlignment				center
		ypos					0
		xpos					0
		wide 					128
		auto_wide_tocontents	0
		auto_tall_tocontents 	1
		visible                 1
		font					Default_26
		labelText				""
        fgcolor_override        "255 255 255 255"

		pin_to_sibling			ImgTitanOrdnanceIcon
		pin_corner_to_sibling	RIGHT
		pin_to_sibling_corner	LEFT
		activeInputExclusivePaint		gamepad
	}

	OrdnanceHintPC
	{
		ControlName				Label
		classname				"LoadoutHintLabel"
		textAlignment				center
		ypos					0
		xpos					0
		wide 					128
		auto_wide_tocontents	0
		auto_tall_tocontents 	1
		visible                 1
		font					Default_26
		labelText				"%+offhand0%"
        fgcolor_override        "255 255 255 255"

		pin_to_sibling			OrdnanceHint
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
		activeInputExclusivePaint		keyboard
	}

	OrdnanceName
	{
		ControlName				Label
		//InheritProperties		LoadoutItemTitle
		classname				"TitanOrdnanceName HideWhenLocked"
		xpos                    10
		auto_wide_tocontents	1
		auto_tall_tocontents 	1
		visible                 1
		font					Default_28
		allcaps					1
		labelText				""
        fgcolor_override        "255 255 255 255"

		pin_to_sibling			ImgTitanOrdnanceIcon
		pin_corner_to_sibling	TOP_LEFT
		pin_to_sibling_corner	TOP_RIGHT
	}

	LblTitanOrdnanceDesc
	{
		ControlName				Label
		InheritProperties		AbilityDesc
		ypos					-5
		classname				"TitanOrdnanceLongDesc HideWhenLocked"
		xpos 					-20
		wide 					530
		tall 					70
		fgcolor_override        "255 255 255 130"
		font 					Default_28_ShadowGlow

		pin_to_sibling			OrdnanceName
		pin_corner_to_sibling	TOP_LEFT
		pin_to_sibling_corner	BOTTOM_LEFT
	}

    ButtonOrdnance
    {
        ControlName				RuiButton
        InheritProperties		RuiSmallButton
        wide                    658
        tall                    90

        pin_to_sibling			ImgTitanOrdnanceIcon
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_LEFT
        scriptID                "ordnance"
        xpos                    10
        ypos                    0
        navUp					ButtonCore
        navDown					ButtonSpecial
        classname               TitanPropertySelectionButton
        visible					0
        //tabPosition             0
    }

	ImgTitanSpecialIcon
	{
		ControlName				RuiPanel
		InheritProperties		LoadoutButtonMedium
		classname				"TitanLoadoutPanelImageClass HideWhenLocked"
		scriptID                "special"
        rui                     "ui/loadout_image_medium.rpak"

		pin_to_sibling			ImgTitanOrdnanceIcon
		pin_corner_to_sibling	TOP_LEFT
		pin_to_sibling_corner	BOTTOM_LEFT
	}

	SpecialHint
	{
		ControlName				Label
		classname				"SpecialHint LoadoutHintLabel"
		textAlignment				center
		ypos					0
		xpos					0
		wide 					128
		auto_wide_tocontents	0
		auto_tall_tocontents 	1
		visible                 1
		font					Default_26
		labelText				""
        fgcolor_override        "255 255 255 255"

		pin_to_sibling			ImgTitanSpecialIcon
		pin_corner_to_sibling	RIGHT
		pin_to_sibling_corner	LEFT
		activeInputExclusivePaint		gamepad
	}

	SpecialHintPC
	{
		ControlName				Label
		classname				"LoadoutHintLabel"
		textAlignment				center
		ypos					0
		xpos					0
		wide 					128
		auto_wide_tocontents	0
		auto_tall_tocontents 	1
		visible                 1
		font					Default_26
		labelText				"%+offhand1%"
        fgcolor_override        "255 255 255 255"

		pin_to_sibling			SpecialHint
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
		activeInputExclusivePaint		keyboard
	}

	SpecialName
	{
		ControlName				Label
		//InheritProperties		LoadoutItemTitle
		classname				"TitanSpecialName HideWhenLocked"
		xpos                    10
		auto_wide_tocontents	1
		auto_tall_tocontents 	1
		visible                 1
		font					Default_28
		allcaps					1
		labelText				""
        fgcolor_override        "255 255 255 255"

		pin_to_sibling			ImgTitanSpecialIcon
		pin_corner_to_sibling	TOP_LEFT
		pin_to_sibling_corner	TOP_RIGHT
	}

	LblTitanSpecialDesc
	{
		ControlName				Label
		InheritProperties		AbilityDesc
		ypos					-5
		classname				"TitanSpecialLongDesc HideWhenLocked"
		xpos 					-20
		wide 					530
		tall 					70
		fgcolor_override        "255 255 255 130"
		font 					Default_28_ShadowGlow

		pin_to_sibling			SpecialName
		pin_corner_to_sibling	TOP_LEFT
		pin_to_sibling_corner	BOTTOM_LEFT
	}

    ButtonSpecial
    {
        ControlName				RuiButton
        InheritProperties		RuiSmallButton
        wide                    658
        tall                    90

        pin_to_sibling			ImgTitanSpecialIcon
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_LEFT
        scriptID                "special"
        xpos                    10
        ypos                    0
        navUp					ButtonOrdnance
        navDown					ButtonAntirodeo
        classname               TitanPropertySelectionButton
        visible					0
        //tabPosition             0
    }

	ImgTitanAntirodeoIcon
	{
		ControlName				RuiPanel
		InheritProperties		LoadoutButtonMedium
		classname				"TitanLoadoutPanelImageClass HideWhenLocked"
		scriptID                "antirodeo"
        rui                     "ui/loadout_image_medium.rpak"

		pin_to_sibling			ImgTitanSpecialIcon
		pin_corner_to_sibling	TOP_LEFT
		pin_to_sibling_corner	BOTTOM_LEFT
	}

	AntirodeoHint
	{
		ControlName				Label
		classname				"AntirodeoHint LoadoutHintLabel"
		textAlignment				center
		ypos					0
		xpos					0
		wide 					128
		auto_wide_tocontents	0
		auto_tall_tocontents 	1
		visible                 1
		enabled					1
		font					Default_26
		labelText				""
        fgcolor_override        "255 255 255 255"

		pin_to_sibling			ImgTitanAntirodeoIcon
		pin_corner_to_sibling	RIGHT
		pin_to_sibling_corner	LEFT
		activeInputExclusivePaint		gamepad
	}

	AntirodeoHintPC
	{
		ControlName				Label
		classname				"LoadoutHintLabel"
		textAlignment				center
		ypos					0
		xpos					0
		wide 					128
		auto_wide_tocontents	0
		auto_tall_tocontents 	1
		visible                 1
		font					Default_26
		labelText				"%+offhand2%"
        fgcolor_override        "255 255 255 255"

		pin_to_sibling			AntirodeoHint
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
		activeInputExclusivePaint		keyboard
	}

	AntirodeoName
	{
		ControlName				Label
		//InheritProperties		LoadoutItemTitle
		classname				"TitanAntirodeoName HideWhenLocked"
		xpos                    10
		auto_wide_tocontents	1
		auto_tall_tocontents 	1
		visible                 1
		font					Default_28
		allcaps					1
		labelText				""
        fgcolor_override        "255 255 255 255"

		pin_to_sibling			ImgTitanAntirodeoIcon
		pin_corner_to_sibling	TOP_LEFT
		pin_to_sibling_corner	TOP_RIGHT
	}

	LblTitanAntirodeoDesc
	{
		ControlName				Label
		InheritProperties		AbilityDesc
		ypos					-5
		classname				"TitanAntirodeoLongDesc HideWhenLocked"
		xpos 					-20
		wide 					530
		tall 					70
		fgcolor_override        "255 255 255 130"
		font 					Default_28_ShadowGlow

		pin_to_sibling			AntirodeoName
		pin_corner_to_sibling	TOP_LEFT
		pin_to_sibling_corner	BOTTOM_LEFT
	}

    ButtonAntirodeo
    {
        ControlName				RuiButton
        InheritProperties		RuiSmallButton
        wide                    658
        tall                    90

        pin_to_sibling			ImgTitanAntirodeoIcon
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_LEFT
        scriptID                "antirodeo"
        xpos                    10
        ypos                    0
        navUp					ButtonSpecial
        navDown					ButtonPrimary
        classname               TitanPropertySelectionButton
        visible					0
        //tabPosition             0
    }


	ImgTitanPrimaryImage
	{
		ControlName				RuiPanel
		InheritProperties		LoadoutButtonLarge
		classname				"TitanLoadoutPanelImageClass HideWhenLocked"
		rui                     "ui/loadout_image_large.rpak"
		scriptID				"primary"

		ypos					0
		xpos					0

		pin_to_sibling			ImgTitanAntirodeoIcon
		pin_corner_to_sibling	TOP_RIGHT
		pin_to_sibling_corner	BOTTOM_RIGHT
	}

	WeaponName
	{
		ControlName				Label
		classname 				TitanPrimaryName
		xpos					10
		ypos					-10
		auto_wide_tocontents	1
		auto_tall_tocontents 	1
		visible                 1
		font					Default_28
		allcaps					1
		labelText				"#WEAPON"
        fgcolor_override		"255 255 255 255"

		pin_to_sibling			ImgTitanPrimaryImage
		pin_corner_to_sibling	TOP_LEFT
		pin_to_sibling_corner	TOP_RIGHT
	}

	LblTitanPrimaryDesc
	{
		ControlName				Label
		InheritProperties		AbilityDesc
		classname				"TitanPrimaryLongDesc HideWhenLocked"
		xpos 					-20
		wide 					530
		tall 					70
		fgcolor_override        "255 255 255 180"
		font 					Default_28_ShadowGlow

		pin_to_sibling			WeaponName
		pin_corner_to_sibling	TOP_LEFT
		pin_to_sibling_corner	BOTTOM_LEFT
	}

    ButtonPrimary
    {
        ControlName				RuiButton
        InheritProperties		RuiSmallButton
        wide                    730
        tall                    90
        pin_to_sibling			ImgTitanPrimaryImage
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_LEFT
        xpos                    -15
        ypos                    0
		scriptID				"primary"
        navUp					ButtonAntirodeo
        navDown					ButtonCore
        classname               TitanPropertySelectionButton
        visible					0
        //tabPosition             0
    }


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	ButtonTooltip
	{
		ControlName				CNestedPanel
		classname				ButtonTooltip
		InheritProperties		ButtonTooltip
		controlSettingsFile		"resource/UI/menus/button_locked_tooltip.res"
	}
}