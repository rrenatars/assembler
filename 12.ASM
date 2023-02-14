  .model tiny
  .code
  org 100h 
  include _abc.mac

Start:
  CLS
  mov AL,'A'
  mov CX,26
Metka1:
  PRINT
  inc AL
  dec CL
  jnz Metka
  KURSOR 1,0

  mov AL,'A'
Metka2:
  PRINT
  inc AL
  cmp AL,'Z'
  jc Metka2
  jz Metka2
    
end Start