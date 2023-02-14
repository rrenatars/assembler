                 ;--шаблон
  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
Start:
  CLS                   ;очистка экрана
  
;                       ;--текст ПРОГРАММЫ--
  Text t1	
  CALL Mas
  mov BX, offset y
  mov CX, Len
  mov AX, 0
Metka:
  add AL, [BX]
  inc BX
  dec CX
  jnz Metka

  text t2
  Call DecAX
  
  
  PAUSE                 ;пауза
  STOP                  ;стоп

  Y dw  5, 200, 100    ;переменные
  Len = $ - Y         ;константы
  t1 db "Массив", '$'
  t2 db 13, 10, "Сумма", '$'

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
    CALL DecAX
    add BX, 2
    dec CX
    jnz Mas1
    pop CX
    pop BX
    pop AX
    ret 	 

end Start
