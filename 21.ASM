                 ;--蠡���
  .model tiny
  .code
  org 100h
  include _abc.mac      ;������⥪� ����ᮢ
Start:
  CLS                   ;���⪠ ��࠭�
  
;                       ;--⥪�� ���������--
  VIDEO
  mov BX, 0
  mov CX, 25 * 160 + 80 * 2
  mov AX, 2Ah         ; mov AL, '#' mov AH, 4E
Met:  
  mov ES:[BX], AX
  inc BX
  dec CX
  jnz Met       ; mov ES:[BX], AL mov ES:[BX + 1], AH  

  PAUSE                 ;��㧠
  STOP                  ;�⮯

; Y db  "�ਢ��",'$'    ;��६����
; Len = $ - Y - 1       ;����⠭��

  include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--

end Start
