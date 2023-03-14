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
  mov DX, 0                         ; направление
  mov CH, '0'                       ; символ пера
  mov CL, '.'                       ; след
Metka:
  mov ES:[BX], CH
  mov AH, 10h                       ; PAUSE
  int 16h                           ; PAUSE
  cmp AL, 27
  jnz Metka0
    STOP
Metka0:
  mov ES:[BX], CL
  cmp AH, 77
  jnz Metka1
    mov DX, 2
Metka1:
  cmp AH, 75
  jnz Metka2
    mov DX, -2
Metka2:
  cmp AH, 80
  jnz Metka3
    mov DX, 160
Metka3:
  cmp AH, 72
  jnz Metka4
    mov DX, -160
Metka4:
  cmp AL, ' '
  jnz Metka5
    mov DX, 0
Metka5:
  add BX, DX
  
  jmp Metka
    


  PAUSE                 ;пауза
  STOP                  ;стоп

; Y db  "Привет",'$'    ;переменные

  include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--

end Start
  
