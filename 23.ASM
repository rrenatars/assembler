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
  mov CX, 80 * 8
  mov AX, 7FB0h
  Call Flag 
  mov CX, 8 * 80
  mov AX, 1BB1h
  Call Flag
  mov CX, 8 * 80
  mov AX, 4CB2h
  Call Flag   
    

  PAUSE                 ;пауза
  STOP                  ;стоп

; Y db  "Привет",'$'    ;переменные
  Len = 8 * 80       ;константы
  

  include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--
Flag:
  Flag1:
    mov ES:[BX], AX
    add BX, 2
    dec CX
    jnz Flag1
  ret

end Start
