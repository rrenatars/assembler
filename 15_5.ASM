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
  text Z						
  inc BX
  dec CX
  jnz Metka

  PAUSE                 ;пауза
  STOP                  ;стоп

  Y db  "ABCD", '$'    ;переменные
  Len = $ - Y      ;константы
  Z db 13, 10, '$'

; include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--

end Start
