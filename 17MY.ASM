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
Metka2:
  mov AL, [BX]
Metka:
  cmp AL, [BX]
  jc Metka2   
  inc BX
  dec CX
  jnz Metka

  WriteLn
  Text t2
  Call DecAL
  
  PAUSE                 ;��㧠
  STOP                  ;�⮯

  Y db  3, 9, 7, 5, 6    ;��६����
  Len = $ - Y       ;����⠭��
  t1 db "���ᨢ", '$'
  t2 db "���ᨬ����", '$'

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
