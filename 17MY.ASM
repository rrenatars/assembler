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
  mov AL, 0
Metka2:
  mov AL, [BX]
Metka:
  cmp AL, [BX]
  jc Metka2   
  inc BX
  dec CX
  jnz Metka

  WriteLn
  Text t2
  Call DecAL
  
  PAUSE                 ;пауза
  STOP                  ;стоп

  Y db  3, 9, 7, 5, 6    ;переменные
  Len = $ - Y       ;константы
  t1 db "Массив", '$'
  t2 db "Максимальный", '$'

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
