;--蠡��� 
  .model tiny
  .code
  org 100h
  include _abc.mac      ;������⥪� ����ᮢ
Start:
  CLS                   ;���⪠ ��࠭�

;                       ;--⥪�� ���������--
  MOV BX, 0
  mov CX, Len
Met:
  mov AL, y[BX]
  print
  mov z[BX], AL
  mov AL, z[BX]
  PRINT
  inc BX
  dec CX
  jnz Met

 
  PAUSE                 ;��㧠
  STOP                  ;�⮯

  Y db "fdafaf",'$'    ;��६����
  z db ""
  Len = $ - Y - 1       ;����⠭��

; include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--

end Start
