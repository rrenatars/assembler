                 ;--蠡���
  .model tiny
  .code
  org 100h
  include _abc.mac      ;������⥪� ����ᮢ
Start:
  CLS                   ;���⪠ ��࠭�

;                       ;--⥪�� ���������--
  text t1
  call Mas
  Writeln
  mov BX, offset y + 1
  mov CX, len - 1
  mov AL, y[0]
Met1:
  cmp AL, [BX]
  jc Met2
    mov AL, [BX]
  Met2:
    inc BX
    dec CX
    jnz Met1
  
  text t2
  call DecAL
  writeln

  mov BX, offset y + 1 
  mov CX, len - 1
  mov AL, y[0]
Met3:
  cmp AL, [BX]
  jnc Met4
    mov AL, [BX]
   Met4:
     inc BX
     dec CX
     jnz Met3

  
  text t3
  call DecAL

  PAUSE                 ;��㧠
  STOP                  ;�⮯

  y db 10, 21, 12, 9, 40, 54
  len = $ - y
  t1 db "Massive", '$'
  t2 db "Minimal", '$'
  t3 db "Maximum", '$'
; Y db  "�ਢ��",'$'    ;��६����
; Len = $ - Y - 1       ;����⠭��

  include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--

Mas:
  push AX
  push BX
  push CX
  mov BX, offset y
  mov CX, len
  Mas1:
    mov AL, [BX]
    Call DecAL
    inc BX
    dec CX
    jnz Mas1
    pop CX
    pop BX
    pop AX
    ret
end Start
