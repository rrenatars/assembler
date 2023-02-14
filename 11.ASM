  .model tiny
  .code
  org 100h
  include _abc.mac

Start:
  CLS
  mov BX, offset y
  mov CX, len
Metka:
  mov AL, [BX]
  PRINT
  inc BX
  dec CX
  jnz Metka
  PAUSE
  STOP

  y db "ABCDEF"
  len = $ - y
end Start  