MouseMove( nCode, wParam, lParam ) { 

    Critical
    static lastMouseMove := A_TickCount
	if ( !nCode && ( wParam = 0x200 ) ) { 
        
		diffMouseMove := A_TickCount - lastMouseMove
		lastMouseMove := A_TickCount

        Text := 
        (
            " X: " NumGet( lParam , 0, "Int" )
            " Y: " NumGet( lParam , 4, "Int" )
            " Last keypress: " diffMouseMove
        )

		;OutputDebug( Text )

        ToolTip( Text )

        setVars := -1
        currTime := A_TickCount
        xPos := NumGet( lParam, 0, "int" )
        yPos := NumGet( lParam, 4, "int" )

		QueryMouseMove( setVars, currTime , xPos, yPos )
	}
    
    Return CallNextHookEx( nCode, wParam, lParam ) 
}