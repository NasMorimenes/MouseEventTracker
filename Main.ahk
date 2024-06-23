#Include Hooks.ahk
#Include Utilities.ahk
#Include QueryMouseMove.ahk
#Include Initialize.ahk

DEBUG_OUTPUT := true
WH_MOUSE_LL := 14

; Inicialização
Initialize()

Esc::ExitApp() ; Permite sair com a tecla Esc