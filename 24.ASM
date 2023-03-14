                 ;--шаблон
  .model tiny
  .code
  org 100h																																											
  include _abc.mac      ;библиотека макросов
Start:
  CLS                   ;очистка экрана
  VIDEO
;                       ;--текст ПРОГРАММЫ--
  mov BX, 3 * 160 + 20 * 2
  mov AX, 4E23h
  mov CH, 5
  mov CL, 8
  mov DX, 2
  Call Line																																														
  mov DX, 160
  Call Line
  mov DX, -2
  Call Line
  mov DX, -160
  Call Line
  
  

  PAUSE                 ;пауза
  STOP                  ;стоп

; Y db  "Привет",'$'    ;переменные

  include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--

Line:
  push CX
  Line1:
    mov ES:[BX], AX
    add BX, DX
    dec CL
    jnz Line1
    sub BX, DX
  pop CX
  xchg CH, CL
  ret

end Start

