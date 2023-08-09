
resource/ui/menus/customLoadoutSelectionButtons.res
{
    //9 buttons per page, 3 per row, last button should be called ButtonLast
    Button0
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        wide                    250
        tall                    250
        xpos                    100
        ypos                    150
        navUp					Button6
        navLeft                 ButtonLast
        navRight                Button1
        navDown					Button3
        classname               CustomTitanLoadoutButton
        visible					0

        pin_to_sibling          LoadoutButtons
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   TOP_LEFT

        //tabPosition             0
    }
    Button0Info
	{
		ControlName				CNestedPanel
		controlSettingsFile		"resource/ui/menus/panels/titanloadoutinfo_large.res"
        wide                    250
        tall                    250
        classname				TitanLoadoutInfoClass
	    ypos					0
        pin_to_sibling          Button0
	    pin_corner_to_sibling	TOP_RIGHT
	    pin_to_sibling_corner	TOP_RIGHT
	}
    Button1
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        wide                    250
        tall                    250
        pin_to_sibling			Button0
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_RIGHT
        xpos                    10
        navUp					Button7
        navLeft                 Button0
        navRight                Button2
        navDown					Button4
        classname               CustomTitanLoadoutButton
        visible					0
        //tabPosition             0
    }
    Button1Info
	{
		ControlName				CNestedPanel
		controlSettingsFile		"resource/ui/menus/panels/titanloadoutinfo_large.res"
        wide                    250
        tall                    250
        classname				TitanLoadoutInfoClass
	    ypos					0
        pin_to_sibling          Button1
	    pin_corner_to_sibling	TOP_RIGHT
	    pin_to_sibling_corner	TOP_RIGHT
	}

    Button2
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        wide                    250
        tall                    250
        pin_to_sibling			Button1
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_RIGHT
        xpos                    10
        navUp					ButtonLast
        navLeft                 Button1
        navRight                Button3
        navDown					Button5
        classname               CustomTitanLoadoutButton
        visible					0
        //tabPosition             0
    }
    Button2Info
	{
		ControlName				CNestedPanel
		controlSettingsFile		"resource/ui/menus/panels/titanloadoutinfo_large.res"
        wide                    250
        tall                    250
        classname				TitanLoadoutInfoClass
	    ypos					0
        pin_to_sibling          Button2
	    pin_corner_to_sibling	TOP_RIGHT
	    pin_to_sibling_corner	TOP_RIGHT
	}

    Button3
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        wide                    250
        tall                    250
        pin_to_sibling			Button0
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        ypos                    10
        navUp					Button0
        navLeft                 Button2
        navRight                Button4
        navDown					Button6
        classname               CustomTitanLoadoutButton
        visible					0
        //tabPosition             0
    }
    Button3Info
	{
		ControlName				CNestedPanel
		controlSettingsFile		"resource/ui/menus/panels/titanloadoutinfo_large.res"
        wide                    250
        tall                    250
        classname				TitanLoadoutInfoClass
	    ypos					0
        pin_to_sibling          Button3
	    pin_corner_to_sibling	TOP_RIGHT
	    pin_to_sibling_corner	TOP_RIGHT
	}
    
    Button4
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        wide                    250
        tall                    250
        pin_to_sibling			Button3
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_RIGHT
        xpos                    10
        ypos                    0
        navUp					Button1
        navLeft                 Button3
        navRight                Button5
        navDown					Button7
        classname               CustomTitanLoadoutButton
        visible					0
        //tabPosition             0
    }
    Button4Info
	{
		ControlName				CNestedPanel
		controlSettingsFile		"resource/ui/menus/panels/titanloadoutinfo_large.res"
        wide                    250
        tall                    250
        classname				TitanLoadoutInfoClass
	    ypos					0
        pin_to_sibling          Button4
	    pin_corner_to_sibling	TOP_RIGHT
	    pin_to_sibling_corner	TOP_RIGHT
	}
    
    Button5
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        wide                    250
        tall                    250
        pin_to_sibling			Button4
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_RIGHT
        xpos                    10
        ypos                    0
        navUp					Button2
        navLeft                 Button4
        navRight                Button6
        navDown					ButtonLast
        classname               CustomTitanLoadoutButton
        visible					0
        //tabPosition             0
    }
    Button5Info
	{
		ControlName				CNestedPanel
		controlSettingsFile		"resource/ui/menus/panels/titanloadoutinfo_large.res"
        wide                    250
        tall                    250
        classname				TitanLoadoutInfoClass
	    ypos					0
        pin_to_sibling          Button5
	    pin_corner_to_sibling	TOP_RIGHT
	    pin_to_sibling_corner	TOP_RIGHT
	}
    
    Button6
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        wide                    250
        tall                    250
        pin_to_sibling			Button3
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        ypos                    10
        navUp					Button3
        navLeft                 Button5
        navRight                Button7
        navDown					Button0
        classname               CustomTitanLoadoutButton
        visible					0
        //tabPosition             0
    }
    Button6Info
	{
		ControlName				CNestedPanel
		controlSettingsFile		"resource/ui/menus/panels/titanloadoutinfo_large.res"
        wide                    250
        tall                    250
        classname				TitanLoadoutInfoClass
	    ypos					0
        pin_to_sibling          Button6
	    pin_corner_to_sibling	TOP_RIGHT
	    pin_to_sibling_corner	TOP_RIGHT
	}
    
    Button7
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        wide                    250
        tall                    250
        pin_to_sibling			Button6
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_RIGHT
        xpos                    10
        ypos                    0
        navUp					Button4
        navLeft                 Button6
        navRight                ButtonLast
        navDown					Button1
        classname               CustomTitanLoadoutButton
        visible					0
        //tabPosition             0
    }
    Button7Info
	{
		ControlName				CNestedPanel
		controlSettingsFile		"resource/ui/menus/panels/titanloadoutinfo_large.res"
        wide                    250
        tall                    250
        classname				TitanLoadoutInfoClass
	    ypos					0
        pin_to_sibling          Button7
	    pin_corner_to_sibling	TOP_RIGHT
	    pin_to_sibling_corner	TOP_RIGHT
	}
    
    ButtonLast
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        wide                    250
        tall                    250
        pin_to_sibling			Button7
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_RIGHT
        xpos                    10
        ypos                    0
        navUp					Button5
        navLeft                 Button7
        navRight                Button0
        navDown					Button2
        classname               CustomTitanLoadoutButton
        visible					0
        //tabPosition             0
    }
    ButtonLastInfo
	{
		ControlName				CNestedPanel
		controlSettingsFile		"resource/ui/menus/panels/titanloadoutinfo_large.res"
        wide                    250
        tall                    250
        classname				TitanLoadoutInfoClass
	    ypos					0
        pin_to_sibling          ButtonLast
	    pin_corner_to_sibling	TOP_RIGHT
	    pin_to_sibling_corner	TOP_RIGHT
	}
    RejectedNotifier
    {
        ControlName				CNestedPanel
        controlSettingsFile		"resource/ui/menus/panels/titanloadoutrejectedcounter.res"
        wide                    250
        tall                    250
        classname				TitanLoadoutRejectedClass
        ypos					0
        xpos                    25
        pin_to_sibling          Button2
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_RIGHT
    }


    buttonNext
    {
			ControlName RuiButton
			InheritProperties RuiSmallButton
			labelText "#NEXT"

			//image "vgui/hud/white"
			//drawColor "255 255 255 128"
            wide                100
			pin_to_sibling ButtonLast
			pin_corner_to_sibling TOP_RIGHT
			pin_to_sibling_corner BOTTOM_RIGHT
    }
    buttonPrev
    {
			ControlName RuiButton
			InheritProperties RuiSmallButton
			labelText "#PREVIOUS"
            wide                150
			//image "vgui/hud/white"
			//drawColor "255 255 255 128"
	
			pin_to_sibling Button6
			pin_corner_to_sibling TOP_LEFT
			pin_to_sibling_corner BOTTOM_LEFT
    }
    buttonRejected
    {
			ControlName RuiButton
			InheritProperties RuiSmallButton
			labelText "#SHOW_REJECTED_LOADOUTS"
            wide                    400
            textAlignment           center
			//image "vgui/hud/white"
			//drawColor "255 255 255 128"
	
			pin_to_sibling Button7
			pin_corner_to_sibling TOP
			pin_to_sibling_corner BOTTOM
    }
}
