                 ;--蠡���
  .model tiny
  .code
  org 100h																																											
  include _abc.mac      ;������⥪� ����ᮢ
Start:
  CLS                   ;���⪠ ��࠭�
  VIDEO
;                       ;--⥪�� ���������--
  mov BX, 12 * 160 + 40 * 2
  mov DX, 2                         ; ���ࠢ�����
  mov CH, '0'                       ; ᨬ��� ���
  mov CL, '.'                       ; ᫥�
Metka:
  mov ES:[BX], CH
  mov AH, 10h                       ; PAUSE
  int 16h                            ; PAUSE
  cmp AL, 27
  jnz Metka0
    STOP
Metka0:
  mov ES:[BX], CL
  add BX, DX
  jmp Metka
    


  PAUSE                 ;��㧠
  STOP                  ;�⮯

; Y db  "�ਢ��",'$'    ;��६����

  include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--

end Start
  
