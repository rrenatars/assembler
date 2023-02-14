.model tiny         ; Модель памяти - односегментная
.code               ; Начало сегмента кодов (начало всего)
org 100h            ; Программа начинается с адреса 100
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

                    ; Метка с заглавной буквы 
Start:              ; Начало текста коман д
  mov BX,offset y   ; В регистр BX помещается адрес переменной y (BX=200)
Metka:
  mov AL,[BX]       ; В AL из ячейки номер которой в BX (AL=65)
  PRINT
  inc BX            ; Перешли к следующей ячейке
  cmp AL,0          ; Сравниваем с нулем
  jnz Metka         ; Если не ноль то переходим к началу метки    
  STOP              ; Возврат в операционную систему
  y db "ABCD",0     ; Объявление переменной
  end Start         ; Конец текста команд






