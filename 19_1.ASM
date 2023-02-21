                 ;--шаблон
  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
Start:
  CLS                   ;очистка экрана
  
;                       ;--текст ПРОГРАММЫ--
  Text y
  CALL Shifr
  Text y
  CALL Shifr
  Text y
  
  PAUSE                 ;пауза
  STOP                  ;стоп

  y db  "Привет", 13, 10, '$'    ;переменные
  Len = $ - Y - 3      ;константы
  k = 1001b

  include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--

Shifr:
  push BX
  push CX
  mov BX, offset y
  mov CX, Len
  Shifr1:
    xor byte ptr [BX], k
    inc BX
    dec CX
    jnz Shifr1
    pop CX
    pop BX
    ret																																											

end Start
