;Fenix zone comandos

^Up::
    if (repeat)  ; Si la repetición está activa, la desactiva
    {
        repeat := false
        SetTimer, PressUp, Off  ; Apaga el temporizador
    }
    else  ; Si la repetición no está activa, la activa
    {
        repeat := true
        SetTimer, PressUp, 100  ; Activa el temporizador para ejecutar la función cada 500 ms
    }
return

PressUp:
    if (repeat)
    {
        Send, {Up down}  ; Mantiene la tecla de flecha hacia arriba presionada
	Sleep, 50
        Send, {Up up}    ; Suelta la tecla
    }
return

::cercap::
SendInput, {Backspace}^a
SendInput, /cerrar capo{Enter}
return

::abrcap::
SendInput, {Backspace}^a
SendInput, /abrir capo{Enter}
return

::sertax::
SendInput, {Backspace}^a
SendInput, /servicio taxi{Enter}
return

::sermec::
SendInput, {Backspace}^a
SendInput, /servicio mecanico{Enter}
return

::colg::
SendInput, {Backspace}^a
SendInput, /colgar{Enter}
return

::dard::
SendInput {Backspace}^a
SendInput ^c
Sleep, 100
SendInput /dar{Space}dinero{Space}%Clipboard%{Space}
return

::loc::
SendInput {Backspace}^a
SendInput /locate{Enter}
return

::smsc::
SendInput {Backspace}^a
SendInput ^c
Sleep, 100
tel := Clipboard 
SendInput /sms{Space}%tel%{Space}
return

::smsp::
SendInput {Backspace}^a
SendInput /sms{Space}%tel%{Space}
return

::llam::
SendInput {Backspace}^a
SendInput ^c
Sleep, 100
llamar := Clipboard 
SendInput /llamar{Space}%llamar%{Enter}
return

::num::
SendInput {Backspace}^a
SendInput ^c
Sleep, 100
SendInput /numero{Space}%Clipboard%{Enter}
return

::cartan::
SendInput {Backspace}^a
SendInput /cargar tanque{Enter}
return

::combid::
SendInput {Backspace}^a
SendInput /comprar bidon{Enter}
return

::lletan::
SendInput {Backspace}^a
SendInput /llenar tanque{Enter}
return

::acerep::
SendInput, {Backspace}^a
SendInput, /aceptar reparacion{Enter}
return

::acepie::
SendInput {Backspace}^a
SendInput /aceptar piezas{Enter}
return

::acepro::
SendInput {Backspace}^a
SendInput /aceptar proteccion{Enter}
return

;----------------------ARMAS---------------------------

::cremp5::
SendInput {Backspace}^a
SendInput /crear mp5{Enter}
return

::credk::
SendInput {Backspace}^a
SendInput /crear desert-eagle{Enter}
return

::cre9mms::
SendInput {Backspace}^a
SendInput /crear 9mm-con-silenciador{Enter}
return

::cre9mm::
SendInput {Backspace}^a
SendInput /crear 9mm{Enter}
return

::creesc::
SendInput {Backspace}^a
SendInput /crear escopeta{Enter}
return

::venmp5::
SendInput {Backspace}^a
SendInput ^c
Sleep, 100
SendInput /vender mp5 %Clipboard%{Space}
return

::vendk::
SendInput {Backspace}^a
SendInput ^c
Sleep, 100
SendInput /vender desert-eagle %Clipboard%{Space}
return

::venesc::
SendInput {Backspace}^a
SendInput ^c
Sleep, 100
SendInput /vender escopeta %Clipboard%{Space}
return

::ven9mm::
SendInput {Backspace}^a
SendInput ^c
Sleep, 100
SendInput /vender 9mm %Clipboard%{Space}
return

;-------------------TERMINO DE ARMAS

::tiem::
SendInput {Backspace}^a
SendInput /tiempo{Enter}
return

::inv::
SendInput {Backspace}^a
SendInput /inventario{Enter}
return

::hab::
SendInput {Backspace}^a
SendInput /habilidades{Enter}
return

::asrr::
SendInput {Backspace}^a
SendInput ^c
Sleep, 100
SendInput, /reportar %Clipboard% ASR{Enter}
return

!z::
Send, t/id{Space}
return

!1::
Send, t/abrir{Enter}
return

!2::
Send, t/cerrar{Enter}
return

!3::
Send, t/estacionar{Enter}
return

::ab::
SendInput {Backspace}^a
SendInput /abrir baul{Enter}
Sleep, 1000
SendInput t/baul{Enter}
return

::cb::
SendInput {Backspace}^a
SendInput /cerrar baul{Enter}
return


::mr::
SendInput {Backspace}^a
SendInput /y tranquiliza al paciente, y procede a realizar el tratamiento.{Enter}
SendInput t/reanimar{Space}
return

::ms::
SendInput {Backspace}^a
SendInput t/subir paciente{Space}
return

::rt::
SendInput {Backspace}^a
SendInput /responder taxi{Enter}
return

^!g::
Send, t/g{Space}
return

;termino de fenix zone comandos