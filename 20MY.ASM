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
  mov BX, offset Y
  mov SI, offset Y + Len
Met:
  mov DI, [BX]
  mov [BX], [SI]
  mov [SI], DI
  inc BX																																															
  dec SI
  cmp BX, SI
  jnz Met

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
