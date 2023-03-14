                 ;--шаблон
  .model tiny
  .code
  org 100h																																											
  include _abc.mac      ;библиотека макросов
Start:
  CLS                   ;очистка экрана
  VIDEO
;                       ;--текст ПРОГРАММЫ--
  mov BX, 12 * 160 + 40 * 2
  mov DX, 2                         ; направление
  mov CH, '0'                       ; символ пера
  mov CL, '.'                       ; след
Metka:
  mov ES:[BX], CH
  mov AH, 10h                       ; PAUSE
  int 16h                            ; PAUSE
  cmp AL, 27
  jnz Metka0
    STOP
Metka0:
  mov ES:[BX], CL
  add BX, DX
  jmp Metka
    


  PAUSE                 ;пауза
  STOP                  ;стоп

; Y db  "Привет",'$'    ;переменные

  include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--

end Start
  
