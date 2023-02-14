                 ;--шаблон
  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
Start:
  CLS                   ;очистка экрана
;                       ;--текст ПРОГРАММЫ--
  mov DX,offset y    
  mov AH,9
  int 21h

  PAUSE                 ;пауза
  STOP                  ;стоп
  y db "ABCD",'$'
; Y db  "Привет",'$'    ;переменные
; Len = $ - Y - 1       ;константы

; include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--

end Start
