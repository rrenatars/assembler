                 ;--шаблон
  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
Start:
  CLS                   ;очистка экрана

;                       ;--текст ПРОГРАММЫ--
  text y
  lea BX, y
  mov cx, len
Metka: 
  mov AL, [BX]
  PRINT
  mov AH, 0Eh
  mov AL, 13
  int 10h
  mov AL, 10
  int 10h						
  inc BX
  dec CX
  jnz Metka

  PAUSE                 ;пауза
  STOP                  ;стоп

  Y db  "ABCD", 13, 10, '$'    ;переменные
  Len = $ - Y - 3       ;константы

; include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--

end Start
