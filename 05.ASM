.model tiny         ; ������ ����� - ����ᥣ���⭠�
.code               ; ��砫� ᥣ���� ����� (��砫� �ᥣ�)
org 100h            ; �ணࠬ�� ��稭����� � ���� 100
include 05.txt

Start:              ; ��砫� ⥪�� ����� �
  CLS
  mov BX,offset y   ; � ॣ���� BX ����頥��� ���� ��६����� y (BX=200)
Metka:
  mov AL,[BX]       ; � AL �� �祩�� ����� ���ன � BX (AL=65)
  PRINT
  inc BX            ; ���諨 � ᫥���饩 �祩��
  cmp AL,0          ; �ࠢ������ � �㫥�
  jnz Metka         ; �᫨ �� ���� � ���室�� � ��砫� ��⪨  
  PAUSE  
  STOP              ; ������ � ����樮���� ��⥬�
  y db "ABCD",0     ; ������� ��६�����
  end Start         ; ����� ⥪�� ������






