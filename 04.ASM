.model tiny         ; ������ ����� - ����ᥣ���⭠�
.code               ; ��砫� ᥣ���� ����� (��砫� �ᥣ�)
org 100h            ; �ணࠬ�� ��稭����� � ���� 100
PRINT macro
  mov AH,0Eh
  int 10h
endm

CLS macro
  mov AX,3
  int 10h
endm

PAUSE macro
  mov AH,10h
  int 16h
endm

STOP macro
  mov AH,4Ch
  int 21h
endm

                    ; ��⪠ � ��������� �㪢� 
Start:              ; ��砫� ⥪�� ����� �
  mov BX,offset y   ; � ॣ���� BX ����頥��� ���� ��६����� y (BX=200)
Metka:
  mov AL,[BX]       ; � AL �� �祩�� ����� ���ன � BX (AL=65)
  PRINT
  inc BX            ; ���諨 � ᫥���饩 �祩��
  cmp AL,0          ; �ࠢ������ � �㫥�
  jnz Metka         ; �᫨ �� ���� � ���室�� � ��砫� ��⪨    
  STOP              ; ������ � ����樮���� ��⥬�
  y db "ABCD",0     ; ������� ��६�����
  end Start         ; ����� ⥪�� ������






