                 ;--шаблон
  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
Start:
  CLS                   ;очистка экрана

;                       ;--текст ПРОГРАММЫ--
  mov BX, offset y
  mov CX, Len
  mov AL, 0
Met:
  test [BX], 1
  jnz Met2
  inc AL
  Met2:
    inc BX
    dec CX
    jnz Met
																																									 
  call DecAL

  PAUSE                 ;пауза
  STOP                  ;стоп
  
  y db  1, 4, 3, 5, 6, 8																																																							
  Len = $ - y
  t1 db "Array", '$'
  
; Y db  "Привет",'$'    ;переменные       ;константы

  include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--

end Start
