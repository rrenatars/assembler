                 ;--蠡���
  .model tiny
  .code
  org 100h
  include _abc.mac      ;������⥪� ����ᮢ
Start:
  CLS                   ;���⪠ ��࠭�
;                       ;--⥪�� ���������--
  Kursor 12,40
  TEXT y    

  PAUSE                 ;��㧠
  STOP                  ;�⮯
  y db "ABCD",'$'
; Y db  "�ਢ��",'$'    ;��६����
; Len = $ - Y - 1       ;����⠭��

; include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--

end Start
