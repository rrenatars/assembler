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
  mov BX, offset y
  mov CX, Len
  mov AL, 0
  mov DL, 2
  mov DH, 5 + 1
Met:
  cmp [BX], DL
  jc Met2
  cmp [BX], DH
  jnc Met2
  inc AL
Met2:
  inc BX
  dec CX
  jnz Met

  WriteLn
  Text t2
  Call DecAL
  
  PAUSE                 ;��㧠
  STOP                  ;�⮯

  Y db  1, 2, 3, 4, 5, 6    ;��६����
  Len = $ - Y       ;����⠭��
  t1 db "���ᨢ", '$'
  t2 db "�業��", '$'

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
