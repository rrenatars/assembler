                 ;--蠡���
  .model tiny
  .code
  org 100h
  include _abc.mac      ;������⥪� ����ᮢ
Start:
  CLS                   ;���⪠ ��࠭�
  
;                       ;--⥪�� ���������--
  Text y
  CALL Shifr
  Text y
  CALL Shifr
  Text y
  
  PAUSE                 ;��㧠
  STOP                  ;�⮯

  y db  "�ਢ��", 13, 10, '$'    ;��६����
  Len = $ - Y - 3      ;����⠭��
  k = 1001b

  include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--

Shifr:
  push BX
  push CX
  mov BX, offset y
  mov CX, Len
  Shifr1:
    xor byte ptr [BX], k
    inc BX
    dec CX
    jnz Shifr1
    pop CX
    pop BX
    ret																																											

end Start
