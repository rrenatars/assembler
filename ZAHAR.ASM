                 ;--蠡���
  .model tiny
  .code
  org 100h
  include _abc.mac      ;������⥪� ����ᮢ
Start:
  CLS                   ;���⪠ ��࠭�

;                       ;--⥪�� ���������--
  mov BX, offset y
  mov CX, Len
Metka:
  mov AL, [BX]
  PRINT
  cmp AL, ' '
  jnz Metka2
  Writeln
  Metka2:
    inc BX
    dec CX
    cmp CX, 0
    jnz Metka

  PAUSE                 ;��㧠
  STOP                  ;�⮯

  Y db  "�ਢ�� ���� � ��६�����",'$'    ;��६����
  Len = $ - Y - 1      ;����⠭��

; include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--

end Start
