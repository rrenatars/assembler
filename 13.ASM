                 ;--шаблон
  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
Start:
	  CLS                   ;очистка экрана

;                       ;--текст ПРОГРАММЫ--
  mov BX, offset z
Metka:
  mov AL,[BX]
  PRINT
  dec BX
  jnz Metka
  
  
   																																												

  PAUSE                 ;пауза
  STOP                  ;стоп

  y db  "Приве"    ;переменные
  z db "т"
  Len = $ - Y       ;константы
  db 13, 10,"$"

; include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--

end Start
