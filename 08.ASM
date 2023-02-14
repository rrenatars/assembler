                 ;--шаблон
  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
Start:
  CLS                   ;очистка экрана
;                       ;--текст ПРОГРАММЫ--
  Kursor 12,40
  TEXT y    

  PAUSE                 ;пауза
  STOP                  ;стоп
  y db "ABCD",'$'
; Y db  "Привет",'$'    ;переменные
; Len = $ - Y - 1       ;константы

; include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--

end Start
