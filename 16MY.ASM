                 ;--蠡���
  .model tiny
  .code
  org 100h
  include _abc.mac      ;������⥪� ����ᮢ
Start:
  CLS                   ;���⪠ ��࠭�
  
;                       ;--⥪�� ���������--
  Text z	
  CALL Mas
  mov BX, offset y
  mov CX, Len
  WriteLN
  text x
  mov AL, 0
Metka:
  add AL, [BX]
  inc BX
  dec CX
  jnz Metka
  Call DecAL
  
  
  PAUSE                 ;��㧠
  STOP                  ;�⮯

  Y db  5, 20, 100    ;��६����
  Len = $ - Y         ;����⠭��
  z db "���ᨢ", '$'
  x db "�㬬�", '$'

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
