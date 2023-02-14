                 ;--шаблон
  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
Start:
	  CLS                   ;очистка экрана

;                       ;--текст ПРОГРАММЫ--
  mov BX, Len - 1
  mov CX, Len
Metka:
  mov AL, y[BX]
  PRINT
  dec BX
  dec CX
  jnz Metka
  ret
  
  mov BX, offset y + len - 1
Metka:
  mov AL, [BX]
  PRINT
  dec BX
  jnz Metka
   																																												

  PAUSE                 ;пауза
  STOP                  ;стоп

  y db  "Привет",13,10,'$'    ;переменные
  Len = $ - Y - 3       ;константы

; include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--

end Start
