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
  text Z						
  inc BX
  dec CX
  jnz Metka

  PAUSE                 ;��㧠
  STOP                  ;�⮯

  Y db  "ABCD", '$'    ;��६����
  Len = $ - Y      ;����⠭��
  Z db 13, 10, '$'

; include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--

end Start
