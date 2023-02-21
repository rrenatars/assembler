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
  k db A, B, C, D, '$'
  Len = $ - Y - 3      ;константы  
  Len2 = $ - k

  include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--

Shifr:
  push BX
  push CX
  push SI
  mov BX, 0
  mov SI, 0
  mov CX, Len
  Shifr1:
    mov AL, k[SI]
    xor y[BX], AL
    inc SI
    cmp SI, Len2
    jc Shifr2
      mov SI, 0
  Shifr2:
    inc BX
    dec CX
    jnz Shifr1
    pop SI
    pop CX
    pop BX
    ret																																											

end Start
