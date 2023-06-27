                 ;--шаблон
  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
Start:
  VIDEO
  CLS                   ;очистка экрана
  MOV BX, 0
  MOV CX, 0
  MOV AH, 21h
  MOV AL, 00h
Met:
  MOV ES:[BX], AL
  MOV ES:[BX + 1], AH
  ADD BX, 2
  INC AL 
  CMP BX,
  JNZ Met
  WRITELN
  INC CX
  ADD BX, 160
  ADD BX, -32
  CMP CX, y
  JNZ Met

   
                        ;--текст ПРОГРАММЫ--


  PAUSE                 ;пауза
  STOP                  ;стоп

               ;переменные
  x = 32       ;константы
  y = 16

 include _dec.pp       ;библиотека подпрограмм

                       ;--тексты ПОДПРОГРАММ--

end Start
