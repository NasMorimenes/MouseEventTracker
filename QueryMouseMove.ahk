/**
*  QueryMouseMove()
* @param Param[1]: setVars ==  0 --> Consulta as variáveis estáticas QMM
* @param Param[1]: setVars == -1 --> Define as variáveis estáticas QMM com os valores fornecidos
* @param Param[1]: setVars == -2 --> Limpa (reseta) as variáveis estáticas QMM
*
* @example QueryMouseMove(0, lmm, x, y)
*          To retrieve all 3 variables.
*/
QueryMouseMove( setVars := 0, lastMouseMove := 0, xPos := 0, yPos := 0 ) {

    global DEBUG_OUTPUT

    static QMM_xPos := 0
    static QMM_yPos := 0
    static QMM_lastMouseMove := 0

    ; Consulta as variáveis estáticas
    if (setVars == 0) {
        xPos := QMM_xPos
        yPos := QMM_yPos
        lastMouseMove := QMM_lastMouseMove
        return lastMouseMove
    }

    ; Define as variáveis estáticas
    if (setVars == -1) {

        QMM_xPos := xPos
        QMM_yPos := yPos
        QMM_diffMouseMove := lastMouseMove - QMM_lastMouseMove
        QMM_lastMouseMove := lastMouseMove
        if (DEBUG_OUTPUT) {
            ToolTip( "X: " xPos " Y: " yPos " Last mouseMove: " QMM_diffMouseMove )
        }
        return TRUE
    }

    ; Limpa as variáveis estáticas
    if (setVars == -2) {
        QMM_xPos := 0
        QMM_yPos := 0
        QMM_lastMouseMove := 0
        return TRUE
    }

    return FALSE ; Caso nenhum dos valores esperados seja fornecido, retorna FALSE
}