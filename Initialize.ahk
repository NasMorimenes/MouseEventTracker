Initialize() {
    global DEBUG_OUTPUT, WH_MOUSE_LL, hHookMouse, andress

    ; Cria callback para MouseMove
    andress := CallbackCreate( MouseMove )
    ; Define o hook do mouse
    hHookMouse := SetHook( WH_MOUSE_LL, andress) 
    
    ; Define a função de limpeza
    OnExit( Unhook )
}

Unhook(*) {
    global andress, hHookMouse
    MsgBox("Saindo")
    CallbackFree(andress)
    UnhookWindowsHookEx(hHookMouse)
}
