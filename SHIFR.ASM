	                 ;--è ¡«®­
  .model tiny
  .code
  org 100h
  include _abc.mac      ;¡¨¡«¨®â¥ª  ¬ ªà®á®¢
Start:
  CLS                   ;®ç¨áâª  íªà ­ 

;                       ;--â¥ªáâ Žƒ€ŒŒ›--

  Text Y
  Call Shifr
  Text Y
  Call Shifr
  Text Y

  PAUSE                 ;¯ ã§ 
  STOP                  ;áâ®¯

  Y db  "Œ â¢¥©  + ®â á®¢  = «î¡®¢ì", 13, 10, '$'    ;¯¥à¥¬¥­­ë¥
  Len = $ - Y - 3      ;ª®­áâ ­âë
  k db "ABCD"
  Lenk = $ - k

  include _dec.pp       ;¡¨¡«¨®â¥ª  ¯®¤¯à®£à ¬¬

;                       ;--â¥ªáâë Ž„Žƒ€ŒŒ--
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
