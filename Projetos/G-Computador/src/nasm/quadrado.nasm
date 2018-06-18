;quadrado

;16445 - 5X ----1
;16465 - 1X + 16469 ----2
;16485 - 1X + 16489 ----3
;16505 - 1X + 16509 ----4
;16525 - 5X ------5

  leaw $0, %A
  movw %A, %S
  notw %S

  ;linha 1
  leaw $16445, %A
  movw %S, (%A)

  ;linha 2
  leaw $16465, %A
  movw %S, (%A)

  ;linha 3
  leaw $16485, %A
  movw %S, (%A)


  ;linha 4
  leaw $16505, %A
  movw %S, (%A)


  ;linha 5
  leaw $16525, %A
  movw %S, (%A)


  ;linha 6
  leaw $16545, %A
  movw %S, (%A)


  ;linha 7
  leaw $16565, %A
  movw %S, (%A)


  ;linha 8
  leaw $16585, %A
  movw %S, (%A)

  ;linha 9
  leaw $16605, %A
  movw %S, (%A)

  ;linha 10
  leaw $16625, %A
  movw %S, (%A)

  ;linha 10
  leaw $16645, %A
  movw %S, (%A)

  ;linha 10
  leaw $16665, %A
  movw %S, (%A)

  ;linha 10
  leaw $16685, %A
  movw %S, (%A)

  ;linha 10
  leaw $16705, %A
  movw %S, (%A)

  ;linha 10
  leaw $16725, %A
  movw %S, (%A)

  ;linha 10
  leaw $16745, %A
  movw %S, (%A)



