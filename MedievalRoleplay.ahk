~^y::
    if (repeat)  ; Si la repetición está activa, la desactiva
    {
        repeat := false
        SetTimer, PressY, Off  ; Apaga el temporizador
    }
    else  ; Si la repetición no está activa, la activa
    {
        repeat := true
        SetTimer, PressY, 100  ; Activa el temporizador para ejecutar la función cada 1000 ms (1 segund
    }
return

PressY:
    if (repeat)
    {
        Send, {y down}  ; Mantiene la tecla "Y" presionada
        Sleep, 50       ; Mantiene la tecla presionada durante 50 ms
        Send, {y up}    ; Suelta la tecla
    }
return



^!1::
Send, t/me{Space}
return

^!2::
Send, t/do{Space}
return

^!3::
Send, t/ame{Space}
return

^!4::
Send, t/intentar{Space}
return

^!g::
Send, t/g{Space}
return