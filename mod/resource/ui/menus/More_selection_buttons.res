// Current Support:
// Rows x 10
// Columns x 4 (for the users sake, menus should really never have more than 3

resource/ui/menus/more_selection_buttons.res
{
    Button0
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        scriptID				0
        pin_to_sibling			ButtonRowAnchor
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					ButtonLast
        navDown					Button1
        visible					0
        //tabPosition             0
    }

    Button1
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        scriptID				1
        pin_to_sibling			Button0
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					Button0
        navDown					Button2
        visible					0
        //tabPosition             1
    }

    Button2
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        scriptID				2
        pin_to_sibling			Button1
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					Button1
        navDown					Button3
        visible					0
        //tabPosition             2
    }

    Button3
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        scriptID				3
        pin_to_sibling			Button2
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					Button2
        navDown					Button4
        visible					0
        //tabPosition             3
    }

    Button4
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        scriptID				4
        pin_to_sibling			Button3
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					Button3
        navDown					Button5
        visible					0
        //tabPosition             4
    }

    Button5
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        scriptID				5
        pin_to_sibling			Button4
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					Button4
        navDown					Button6
        visible					0
        //tabPosition             5
    }

    Button6
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        scriptID				6
        pin_to_sibling			Button5
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					Button5
        navDown					Button7
        visible					0
        //tabPosition             6
    }

    Button7
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        scriptID				7
        pin_to_sibling			Button6
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					Button6
        navDown					Button8
        visible					0
        //tabPosition             7
    }

    Button8
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        scriptID				8
        pin_to_sibling			Button7
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					Button7
        navDown					Button9
        visible					0
        //tabPosition             8
    }

    Button9
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        scriptID				9
        pin_to_sibling			Button8
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					Button8
        navDown					Button10
        visible					0
        //tabPosition             9
    }
    Button10
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        scriptID				10
        pin_to_sibling			Button9
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					Button9
        navDown					Button11
        visible					0
        //tabPosition             9
    }
        Button11
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        scriptID				11
        pin_to_sibling			Button0
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_RIGHT
        navUp					Button10
        navDown					Button12
        visible					0
        //tabPosition             9
    }
        Button12
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        scriptID				12
        pin_to_sibling			Button11
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					Button11
        navDown					Button13
        visible					0
        //tabPosition             9
    }
        Button13
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        scriptID				13
        pin_to_sibling			Button12
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					Button12
        navDown					Button14
        visible					0
        //tabPosition             9
    }
        Button14
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        scriptID				14
        pin_to_sibling			Button13
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					Button13
        navDown					Button14
        visible					0
        //tabPosition             9
    }
            Button15
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        scriptID				15
        pin_to_sibling			Button14
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					Button14
        navDown					Button16
        visible					0
        //tabPosition             9
    }
                Button16
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        scriptID				16
        pin_to_sibling			Button15
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					Button15
        visible					0
        //tabPosition             9
    }
    button17
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        xpos                    0
        scriptID				17
        pin_to_sibling			Button0
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_RIGHT
        navUp					Button16
        navDown					Button18
        visible					0
        //tabPosition             9
    }
    button18
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        xpos                    0
        scriptID				18
        pin_to_sibling			Button17
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					Button17
        navDown					Button19
        visible					0
        //tabPosition             9
    }
    button19
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        xpos                    0
        scriptID				19
        pin_to_sibling			Button18
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					Button18
        navDown					Button20
        visible					0
        //tabPosition             9
    }
    button20
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        xpos                    0
        scriptID				20
        pin_to_sibling			Button19
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					Button19
        navDown					Button21
        visible					0
        //tabPosition             9
    }
    button21
    {
        ControlName				RuiButton
        InheritProperties		RuiLoadoutSelectionButton
        ypos                    8
        xpos                    0
        scriptID				21
        pin_to_sibling			Button20
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					Button20
        navDown					Button22
        visible					0
        //tabPosition             9
    }
}
