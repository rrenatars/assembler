                 ;--шаблон
  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
Start:
  CLS                   ;очистка экрана
  
;                       ;--текст ПРОГРАММЫ--
  Text z	
  CALL Mas
  mov BX, offset y
  mov CX, Len
  WriteLN
  text x
  mov AL, 0
Metka:
  add AL, [BX]
  inc BX
  dec CX
  jnz Metka
  Call DecAL
  
  
  PAUSE                 ;пауза
  STOP                  ;стоп

  Y db  5, 20, 100    ;переменные
  Len = $ - Y         ;константы
  z db "Массив", '$'
  x db "Сумма", '$'

  include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--
Mas:
  push AX
  push BX
  push CX
  mov BX, offset y
  mov CX, Len
  Mas1:
    mov AL, [BX]
    CALL DecAL
    inc BX
    dec CX
    jnz Mas1
    pop CX
    pop BX
    pop AX
    ret 	 

end Start
