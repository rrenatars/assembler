                 ;--шаблон
  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
Start:
  CLS                   ;очистка экрана
  
;                       ;--текст ПРОГРАММЫ--
  VIDEO
  mov BX, 0
  mov CX, 25 * 160 + 80 * 2
  mov AX, 2Ah         ; mov AL, '#' mov AH, 4E
Met:  
  mov ES:[BX], AX
  inc BX
  dec CX
  jnz Met       ; mov ES:[BX], AL mov ES:[BX + 1], AH  

  PAUSE                 ;пауза
  STOP                  ;стоп

; Y db  "Привет",'$'    ;переменные
; Len = $ - Y - 1       ;константы

  include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--

end Start
