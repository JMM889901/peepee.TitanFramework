"resource/ui/menus/panels/titanloadoutrejectedcounter.res"
{
    RejectedIcon
    {
        ControlName				RuiButton
		InheritProperties		LoadoutButtonMedium
        scriptID                rejectedIcon
        image                   "ui/menu/common/dialog_error"
        tall                   64
        wide                   64
    }
    RejectedCount
    {
		ControlName				Label
        auto_wide_tocontents	1
        font					Default_26
        fgcolor_override        "255 255 255 255"
        xpos                    15
		pin_to_sibling			RejectedIcon
		pin_corner_to_sibling	LEFT
		pin_to_sibling_corner	RIGHT
        labelText				"0"
    }
    RejectHint
    {
		ControlName				Label
        ypos                    20
        wide                   300 
        auto_wide_tocontents	1
        auto_tall_tocontents    1
        font					Default_26
        fgcolor_override        "255 255 255 255"

		pin_to_sibling			RejectedIcon
		pin_corner_to_sibling	TOP_LEFT
		pin_to_sibling_corner	BOTTOM_LEFT
        labelText				"0 Loadouts have been rejected by the server."
        visible                    0   
    }
}