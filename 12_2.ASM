                 ;--蠡���
  .model tiny
  .code
  org 100h
  include _abc.mac      ;������⥪� ����ᮢ
Start:
	  CLS                   ;���⪠ ��࠭�

;                       ;--⥪�� ���������--
  mov BX, Len - 1
  mov CX, Len
Metka:
  mov AL, y[BX]
  PRINT
  dec BX
  dec CX
  jnz Metka
  ret
  
  mov BX, offset y + len - 1
Metka:
  mov AL, [BX]
  PRINT
  dec BX
  jnz Metka
   																																												

  PAUSE                 ;��㧠
  STOP                  ;�⮯

  y db  "�ਢ��",13,10,'$'    ;��६����
  Len = $ - Y - 3       ;����⠭��

; include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--

end Start
