SetHook( idHook, pfn ) {
    hHook := SetWindowsHookEx( idHook, pfn ) ;DllCall("SetWindowsHookEx", "int", idHook, "Ptr", pfn, "Ptr", DllCall("GetModuleHandle", "Ptr", 0), "UInt", 0, "Ptr")
    if ( !hHook ) {
        MsgBox( "Failed to set hook: " idHook )
        ExitApp()
    }
    return hHook
}

CallNextHookEx( nCode, wParam, lParam, hHook := 0 ) {
	LRESULT :=
    DllCall(
        "CallNextHookEx",
        "Uint", hHook,
        "int", nCode,
        "Uint", wParam,
        "Uint", lParam
    ) 
    
    Return LRESULT
}

SetWindowsHookEx( idHook, pfn ) {
    hModule := GetModuleHandle()
    hHook :=
    DllCall(
        "SetWindowsHookEx",
        "int", idHook,
        "Ptr", pfn,
        "Ptr", hModule,
        "UInt", 0,
        "Ptr"
    )
    return hHook
}
GetModuleHandle() {

    hModule :=
    DllCall(
        "GetModuleHandle",
        "Ptr", 0,
        "Ptr"
    )

    return hModule
}

UnhookWindowsHookEx( hHook ) { 
    bool :=
    DllCall(
        "UnhookWindowsHookEx",
        "Uint", hHook,
        "int"
    )
	Return bool
} 