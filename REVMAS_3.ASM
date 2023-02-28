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
  WriteLN
  Text t2
  mov BX, offset Y
  mov SI, offset Y + Len - 1
Met:
  obmen [BX], [SI]
  inc BX																																															
  dec SI
  cmp BX, SI
  jc Met

  Call Mas
  

  PAUSE                 ;пауза
  STOP                  ;стоп

  Y db  7, 9, 5, 8, 6, 3    ;переменные
  Len = $ - Y       ;константы
  t1 db "Массив до", '$'
  t2 db "Массив после", '$'

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
