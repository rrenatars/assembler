                 ;--蠡���
  .model tiny
  .code
  org 100h
  include _abc.mac      ;������⥪� ����ᮢ
Start:
  VIDEO
  CLS                   ;���⪠ ��࠭�
  MOV BX, 0
  MOV CX, 0
  MOV AH, 21h
  MOV AL, 00h
Met:
  MOV ES:[BX], AL
  MOV ES:[BX + 1], AH
  ADD BX, 2
  INC AL 
  CMP BX,
  JNZ Met
  WRITELN
  INC CX
  ADD BX, 160
  ADD BX, -32
  CMP CX, y
  JNZ Met

   
                        ;--⥪�� ���������--


  PAUSE                 ;��㧠
  STOP                  ;�⮯

               ;��६����
  x = 32       ;����⠭��
  y = 16

 include _dec.pp       ;������⥪� ����ணࠬ�

                       ;--⥪��� �����������--

end Start
