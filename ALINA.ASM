                 ;--蠡���
  .model tiny
  .code
  org 100h
  include _abc.mac      ;������⥪� ����ᮢ
Start:
  CLS                   ;���⪠ ��࠭�

;                       ;--⥪�� ���������--
  text y 


  PAUSE                 ;��㧠
  STOP                  ;�⮯

  Y db  "�ਢ��",'$'    ;��६����
; Len = $ - Y - 1       ;����⠭��

; include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--

end Start
