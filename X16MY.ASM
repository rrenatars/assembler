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
  mov CX, 16 * 16
  mov DX, 0
  mov SI, 0

Met:
  mov AH, 2
  mov BH, 0
  mov AL, [SI]
  int 10h
  inc BX
  inc SI
  inc DX
  cmp DX, 16
  jnz NextColumn
  NextLine:
    mov DX, 0
    inc SI
    cmp SI, 16
    jnz Met
  NextColumn:
    add BX, 160
    jmp Met


  PAUSE                 ;��㧠
  STOP                  ;�⮯

; Y db  "�ਢ��",'$'    ;��६����
; Len = $ - Y - 1       ;����⠭��

  include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--

end Start
