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
  mov AX, 0
Metka:
  add AL, [BX]
  inc BX
  dec CX
  jnz Metka

  text t2
  Call DecAX
  
  
  PAUSE                 ;��㧠
  STOP                  ;�⮯

  Y dw  5, 200, 100    ;��६����
  Len = $ - Y         ;����⠭��
  t1 db "���ᨢ", '$'
  t2 db 13, 10, "�㬬�", '$'

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
    CALL DecAX
    add BX, 2
    dec CX
    jnz Mas1
    pop CX
    pop BX
    pop AX
    ret 	 

end Start
