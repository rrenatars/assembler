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
  mov BX, 0
  mov SI, Len - 1
  mov CX, Len / 2
Met:
  mov AL, y[BX]
  mov AH, y[SI]
  mov y[BX], AH
  mov y[SI], AL
  inc BX																																															
  dec SI
  dec CX
  jnz Met

  Call DecAL
  

  PAUSE                 ;��㧠
  STOP                  ;�⮯

  Y db  7, 9, 5, 8, 6, 3    ;��६����
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
