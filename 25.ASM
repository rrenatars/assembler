                 ;--蠡���
  .model tiny
  .code
  org 100h																																											
  include _abc.mac      ;������⥪� ����ᮢ
Start:
  CLS                   ;���⪠ ��࠭�
  VIDEO
;                       ;--⥪�� ���������--
  mov BX, 3 * 160 + 20 * 2
  mov AL, '#'
  mov AH, 4Eh
  mov CH, 10
  mov CL, 20
  Call Box
  mov AL, '+'
  mov AH, 2Ah
  add BX, 162
  sub CH, 2
  sub CL, 2
  Call Box  
  

  PAUSE                 ;��㧠
  STOP                  ;�⮯

; Y db  "�ਢ��",'$'    ;��६����

  include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--

Box:
  push BX
  push CX
  Box2:
    push CX
    push BX
    Box1:
      mov ES:[BX], AL
      mov ES:[BX + 1], AH
      add BX, 2
      dec CL
      jnz Box1
    pop BX
    add BX, 160
    pop CX
    dec CH
    jnz Box2
  pop CX
  pop BX
  ret

end Start
  
