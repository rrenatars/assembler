                 ;--蠡���
  .model tiny
  .code
  org 100h
  include _abc.mac      ;������⥪� ����ᮢ
Start:
  CLS                   ;���⪠ ��࠭�
;                       ;--⥪�� ���������--
  mov DX,offset y    
  mov AH,9
  int 21h

  PAUSE                 ;��㧠
  STOP                  ;�⮯
  y db "ABCD",'$'
; Y db  "�ਢ��",'$'    ;��६����
; Len = $ - Y - 1       ;����⠭��

; include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--

end Start
