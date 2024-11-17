

::colorrojo::
Send, {Raw}{BF0000}
return

::colormorado::
Send, {Raw}{AC58FA}
return

::colorverde::
Send, {Raw}{2ECC71}
return

::colorazul::
Send, {Raw}{3498DB}
return

::coloramarillo::
Send, {Raw}{F4D03F}
return

::colorblanco::
Send, {Raw}{FFFFFF}
return

::colorgris::
Send, {Raw}{626567}
return

::colornaranja::
Send, {Raw}{F39C12}
return

::dut::
Send, /duty{Enter}
return

::rr::
Send, t/radio{Enter}
return




CoordMode, Mouse, Screen

!F6::
    MouseGetPos, mouseX, mouseY
    MsgBox, La posición actual del mouse es: X=%mouseX%, Y=%mouseY%
return

X=1431, Y=622

::callm::
SendInput {BS}/iphone{Enter}
Sleep, 500
Click 1343, 414
Sleep, 500
SendInput 555{Enter}
Sleep, 500
SendInput tAsistencia{Enter}
Sleep 500
Sendinput t/colgar{Enter}
return

::callt::
SendInput {Backspace}^a
SendInput {Ctrl Down}c{Ctrl Up}
SendInput /iphone{Enter}
Sleep, 500
Click 1343, 414
Sleep, 500
SendInput %Clipboard%{Enter}
return


::cjs::
SendInput {BS}/cajero{Enter}
Sleep, 500
MouseMove, 1008, 570, 0
Click
Sleep, 500
SendInput, 128206{Enter}
Sleep, 500
SendInput, {Down}{Down}{Down}
Sleep, 100
SendInput, {Enter}
return

::cjr::
SendInput {Backspace}^a
SendInput {Ctrl Down}c{Ctrl Up}
SendInput /cajero{Enter}
Sleep, 500
MouseMove, 1008, 570, 0
Click
Sleep, 500
SendInput, 128206{Enter}
Sleep, 500
SendInput, {Enter}
Sleep, 500
SendInput %Clipboard%{Enter}
return

::cjd::
SendInput {Backspace}^a
SendInput {Ctrl Down}c{Ctrl Up}
SendInput /cajero{Enter}
Sleep, 500
MouseMove, 1008, 570, 0
Click
Sleep, 500
SendInput, 128206{Enter}
Sleep, 500
SendINput, {Down}
Sleep, 500
SendInput, {Enter}
Sleep, 500
SendInput %Clipboard%{Enter}
return

CoordMode, Mouse, Screen

; Variable para almacenar el texto del macro
macroTexto := "[Servicios-CL] Se busca mecánico"


!Insert::
Send, t/tognews{Enter}
Sleep, 100
Send, t/toganuncios{Enter}
Sleep, 100
Send, t/togmp{Enter}
Sleep, 100
Send, t/togphone{Enter}
Sleep, 100
Send, t/togemp{Enter}
Sleep, 100
Send, t/togfac{Enter}
Sleep, 100
return

!NumPad7::
Send, t/verpedidos{Enter}
return

!NumPad8::
Send, t/cargarcamion 10000{Enter}
return

!NumPad9::
Send, t/venderproductos{Enter}
return

!NumPad1::
Send, t/sembrarsemilla{Enter}
return

!NumPad2::
Send, t/cosecharplanta{Enter}
return

::..::
Send, [...]
return

^!c::
Send, t/C Ramírez:{Space}
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

!0::
Send, t/extraerdroga{Enter}
return

!9::
Send, t/procesar speed{Enter}
return

!8::
Send, t/procesar cocaina{Enter}
return

!7::
Send, t/procesar heroina{Enter}
return

!6::
Send, t/procesar lsd{Enter}
return

!NumpadAdd::
Send, t/cinturon{Enter}
return

!NumpadEnter::
Send, t/vluces{Enter}
return

^}::
SendInput, [**]{Left}{Left}
return

^!F::
Send, t/f{Space}
return



^F2::
    SendInput, t/iphone{Enter}
    Sleep, 300
    MouseMove, 1350, 537, 0
    Sleep, 300
    Click
    Sleep, 300
    SendMode Input ; Cambiar al modo de envío de texto
    SendInput, {Raw}%macroTexto% ; Usar {Raw} para enviar el texto sin interpretar caracteres especiales
    Sleep, 300
    SendMode Input ; Volver al modo de envío normal
    SendInput, {Enter}
    Sleep, 300
    SendInput, {Enter} ; Enviar un último Enter
    return

;^F3::
;    InputBox, macroTexto, Cambiar texto del macro, Ingrese el nuevo texto:
;    if StrLen(macroTexto) > 81
;    {
;        MsgBox, El texto excede los 81 caracteres. Por favor, ingrese un texto más corto.
;    }
;    else
;    {
;        MsgBox, El nuevo texto del macro es: %macroTexto%
;    }
;return
;
;        #If
;    }
;    else
;    {
;        ; El juego no está en ejecución, desactivar hotstrings
;        #IfWinActive
;    }
;return


::ametose::
Send /ame tose{Enter}
return

::tasiento::/asiento{Enter}

::t/cin::/cinturon{Enter}
