                 ;--蠡���
  .model tiny
  .code
  org 100h
  include _abc.mac      ;������⥪� ����ᮢ
Start:
  CLS                   ;���⪠ ��࠭�

;                       ;--⥪�� ���������--
  mov CX, N
  mov AX, 0
Met:
  add AX, CX
  dec CX
  cmp CX, 0
  jnz Met
  
  CALL DecAX

  PAUSE                 ;��㧠
  STOP                  ;�⮯

  N = 6
; Y db  "�ਢ��",'$'    ;��६����
; Len = $ - Y - 1       ;����⠭��

  include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--

end Start
