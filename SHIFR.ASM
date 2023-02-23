	                 ;--шаблон
  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
Start:
  CLS                   ;очистка экрана

;                       ;--текст ПРОГРАММЫ--

  Text Y
																  Call Shifr
  Text Y
  Call Shifr
  Text Y

  PAUSE                 ;пауза
  STOP                  ;стоп

  Y db  "Матвей  + ПРотасова = любовь", 13, 10, '$'    ;переменные
  Len = $ - Y - 3      ;константы
  k db "ABCD"
  Lenk = $ - k

  include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--
Shifr:
  push BX
  push CX
  push SI
  mov BX, 0
  mov CX, Len
  mov SI, 0
  Shifr1:
    mov AL, k[SI]
    xor y[BX], AL
    inc SI
    cmp SI, Lenk
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

Mas:
  push AX
  push BX
  push CX
  mov BX, offset Y
  mov CX, Len
  Mas1:
    mov AL, [BX]
    Call DecAL
    inc BX
    dec CX
    jnz Mas1
    pop CX
    pop BX
    pop AX
    ret
end Start
