                 ;--蠡���
  .model tiny
  .code
  org 100h
  include _abc.mac      ;������⥪� ����ᮢ
Start:
  CLS                   ;���⪠ ��࠭�

;                       ;--⥪�� ���������--
   mov AL, DS:118h
   PRINT

   mov AL, y + 2
   PRINT
  
   mov AL, y[2]
   PRINT

; ��� 横��
   mov BX, offset y    ; ४���������
   add BX, 2
   mov AL, [BX]
   PRINT

   mov BX, offset y + 2
   mov AL, [BX]
   PRINT

   mov BX, 2           ; ४���������   
   mov AL, y[BX]
	   PRINT

   mov BX, offset y
   mov SI, 2
   mov AL, [BX][SI]
   PRINT

  PAUSE                 ;��㧠
  STOP                  ;�⮯

 Y db  "�ਢ��",'$'    ;��६����
 Len = $ - Y - 1       ;����⠭��

 include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--

end Start
