                 ;--шаблон
  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
Start:
  CLS                   ;очистка экрана

;                       ;--текст ПРОГРАММЫ--
   mov AL, DS:118h
   PRINT

   mov AL, y + 2
   PRINT
  
   mov AL, y[2]
   PRINT

; для цикла
   mov BX, offset y    ; рекомендуется
   add BX, 2
   mov AL, [BX]
   PRINT

   mov BX, offset y + 2
   mov AL, [BX]
   PRINT

   mov BX, 2           ; рекомендуется   
   mov AL, y[BX]
	   PRINT

   mov BX, offset y
   mov SI, 2
   mov AL, [BX][SI]
   PRINT

  PAUSE                 ;пауза
  STOP                  ;стоп

 Y db  "Привет",'$'    ;переменные
 Len = $ - Y - 1       ;константы

 include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--

end Start
