                 ;--蠡���
  .model tiny
  .code
  org 100h
  include _abc.mac      ;������⥪� ����ᮢ
Start:
  CLS                   ;���⪠ ��࠭�
  
;                       ;--⥪�� ���������--
  Text t1
  CALL Mas	
  WriteLN
  Text t2
Met3:
  mov BX, 0
  mov CX, Len - 1
  mov DL, 0
Met2:
  mov AL, y[BX]
  mov AH, y[BX + 1]
  cmp AH, AL            ;�ࠢ������ �ᥤ��
  jnc Met1 
    mov y[BX], AH       ;����� �ᥤ��
    mov y[BX + 1], AL   ;����� �ᥤ��
    mov DL, 1           ;��⠭���� 䫠��
  Met1:
    inc BX
    dec CX
    jnz Met2
    cmp DL, 0
    jnz Met3

  Call Mas
  

  PAUSE                 ;��㧠
  STOP                  ;�⮯

  Y db  1, 2, 5, 7, 3, 9, 4    ;��६����
  Len = $ - Y       ;����⠭��
  t1 db "���ᨢ ��", '$'
  t2 db "���ᨢ ��᫥", '$'

  include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--
Mas:
  push AX
  push BX
  push CX
  mov BX, offset y
  mov CX, Len
  Mas1:
    mov AL, [BX]
    CALL DecAL
    inc BX
    dec CX
    jnz Mas1
    pop CX
    pop BX
    pop AX
    ret 	

end Start
