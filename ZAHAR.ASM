                 ;--шаблон
  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
Start:
  CLS                   ;очистка экрана

;                       ;--текст ПРОГРАММЫ--
  mov BX, offset y
  mov CX, Len
Metka:
  mov AL, [BX]
  PRINT
  cmp AL, ' '
  jnz Metka2
  Writeln
  Metka2:
    inc BX
    dec CX
    cmp CX, 0
    jnz Metka

  PAUSE                 ;пауза
  STOP                  ;стоп

  Y db  "Привет вася я переменная",'$'    ;переменные
  Len = $ - Y - 1      ;константы

; include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--

end Start
