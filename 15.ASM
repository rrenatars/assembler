                 ;--蠡���
  .model tiny
  .code
  org 100h
  include _abc.mac      ;������⥪� ����ᮢ
Start:
  CLS                   ;���⪠ ��࠭�

;                       ;--⥪�� ���������--
  text y
  lea BX, y
  mov cx, len
Metka: 
  mov AL, [BX]
  PRINT
  WriteLN						
  inc BX
  dec CX
  jnz Metka

  PAUSE                 ;��㧠
  STOP                  ;�⮯

  Y db  "ABCD", 13, 10, '$'    ;��६����
  Len = $ - Y - 3       ;����⠭��

; include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--

end Start
