                 ;--шаблон
  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
Start:																																												
  CLS                   ;очистка экрана

;                       ;--текст ПРОГРАММЫ--
  Text t1
  Call Mas
  WriteLN
  mov BX, offset y + 1
  mov CX, Len - 1
  mov AL, y[0]
Met1:
  cmp AL, [BX]
  jc Met2
    mov AL, [BX]
  Met2:
    inc BX
    dec CX
    jnz Met1

  Text t2
  Call DecAL

  PAUSE                 ;pause
  STOP                  ;stop

  y db 10, 21, 40, 54    ;vars
  Len = $ - y       ;consts
  t1 db "Massive", '$'
  t2 db "Minimal", '$'

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
    Call DecAL
    inc BX
    dec CX
    jnz Mas1
    pop CX
    pop BX
    pop AX
    ret
    

end Start