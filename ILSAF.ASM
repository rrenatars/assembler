                 ;--шаблон
  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
Start:
  CLS                   ;очистка экрана

;                       ;--текст ПРОГРАММЫ--
  mov CX, N
  mov AX, 0
Met:
  add AX, CX
  dec CX
  cmp CX, 0
  jnz Met
  
  CALL DecAX

  PAUSE                 ;пауза
  STOP                  ;стоп

  N = 6
; Y db  "Привет",'$'    ;переменные
; Len = $ - Y - 1       ;константы

  include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--

end Start
