                 ;--蠡���
  .model tiny
  .code
  org 100h
  include _abc.mac      ;������⥪� ����ᮢ
Start:
	  CLS                   ;���⪠ ��࠭�

;                       ;--⥪�� ���������--
  mov BX, offset z
Metka:
  mov AL,[BX]
  PRINT
  dec BX
  jnz Metka
  
  
   																																												

  PAUSE                 ;��㧠
  STOP                  ;�⮯

  y db  "�ਢ�"    ;��६����
  z db "�"
  Len = $ - Y       ;����⠭��
  db 13, 10,"$"

; include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--

end Start
