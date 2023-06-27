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
  mov CX, 16 * 16
  mov DX, 0
  mov SI, 0

Met:
  mov AH, 2
  mov BH, 0
  mov AL, [SI]
  int 10h
  inc BX
  inc SI
  inc DX
  cmp DX, 16
  jnz NextColumn
  NextLine:
    mov DX, 0
    inc SI
    cmp SI, 16
    jnz Met
  NextColumn:
    add BX, 160
    jmp Met


  PAUSE                 ;пауза
  STOP                  ;стоп

; Y db  "Привет",'$'    ;переменные
; Len = $ - Y - 1       ;константы

  include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--

end Start
