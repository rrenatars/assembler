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
Met3:
  mov BX, 0
  mov CX, Len - 1
  mov DL, 0
Met2:
  mov AL, y[BX]
  mov AH, y[BX + 1]
  cmp AH, AL            ;сравниваем соседей
  jnc Met1 
    mov y[BX], AH       ;обмен соседей
    mov y[BX + 1], AL   ;обмен соседей
    mov DL, 1           ;установка флага
  Met1:
    inc BX
    dec CX
    jnz Met2
    cmp DL, 0
    jnz Met3

  Call Mas
  

  PAUSE                 ;пауза
  STOP                  ;стоп

  Y db  1, 2, 5, 7, 3, 9, 4    ;переменные
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
