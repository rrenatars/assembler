;--шаблон 
  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
Start:
  CLS                   ;очистка экрана

;                       ;--текст ПРОГРАММЫ--
  MOV BX, 0
  mov CX, Len
Met:
  mov AL, y[BX]
  print
  mov z[BX], AL
  mov AL, z[BX]
  PRINT
  inc BX
  dec CX
  jnz Met

 
  PAUSE                 ;пауза
  STOP                  ;стоп

  Y db "fdafaf",'$'    ;переменные
  z db ""
  Len = $ - Y - 1       ;константы

; include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--

end Start
