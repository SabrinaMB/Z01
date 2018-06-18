; LETRA D

;16445 - 3X ----1
;16465  - 3X

;16485 - 1X + 16488 - 1X---3
;16505 - 1X + 16508 - 1X---4

;16525 - 1X + 16529 - 1X---5
;16545 - 1X + 16549 - 1X---6

;16565 - 1X + 16570 - 1X---7
;16585 - 1X + 16590 - 1X---8
;16605 - 1X + 16610 - 1X---9
;16625 - 1X + 16630 - 1X---10
;16645 - 1X + 16650 - 1X---11
;16665 - 1X + 16670 - 1X---12
;16685 - 1X + 16690 - 1X---12
;16705 - 1X + 16710 - 1X---12

;16725 - 1X + 16729 - 1X---5
;16745 - 1X + 16749 - 1X---6

;16765 - 1X + 16768 - 1X---3
;16785 - 1X + 16788 - 1X---4

;16805 - 3X ----1
;16825  - 3X

  leaw $0, %A
  movw %A, %S
  notw %S

  ;linha 1
  leaw $16445, %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)

  ;linha 1
  leaw $16465, %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)

  ;linha2
  leaw $16485, %A
  movw %S, (%A)
  leaw $16488, %A
  movw %S, (%A)

  ;linha3
  leaw $16505, %A
  movw %S, (%A)
  leaw $16508, %A
  movw %S, (%A)

  ;linha4
  leaw $16525, %A
  movw %S, (%A)
  leaw $16529, %A
  movw %S, (%A)

  ;linha5
  leaw $16545, %A
  movw %S, (%A)
  leaw $16549, %A
  movw %S, (%A)

  ;linha6
  leaw $16565, %A
  movw %S, (%A)
  leaw $16570, %A
  movw %S, (%A)

  ;linha7
  leaw $16585, %A
  movw %S, (%A)
  leaw $16590, %A
  movw %S, (%A)

  ;linha8
  leaw $16605, %A
  movw %S, (%A)
  leaw $16610, %A
  movw %S, (%A)

  ;linha9
  leaw $16625, %A
  movw %S, (%A)
  leaw $16630, %A
  movw %S, (%A)

  ;linha10
  leaw $16645, %A
  movw %S, (%A)
  leaw $16650, %A
  movw %S, (%A)

  ;linha11
  leaw $16665, %A
  movw %S, (%A)
  leaw $16670, %A
  movw %S, (%A)

  ;linha12
  leaw $16685, %A
  movw %S, (%A)
  leaw $16690, %A
  movw %S, (%A)

  ;linha11
  leaw $16705, %A
  movw %S, (%A)
  leaw $16710, %A
  movw %S, (%A)

  ;linha12
  leaw $16725, %A
  movw %S, (%A)
  leaw $16729, %A
  movw %S, (%A)

  ;linha12
  leaw $16745, %A
  movw %S, (%A)
  leaw $16749, %A
  movw %S, (%A)

  ;linha12
  leaw $16765, %A
  movw %S, (%A)
  leaw $16768, %A
  movw %S, (%A)

  ;linha12
  leaw $16785, %A
  movw %S, (%A)
  leaw $16788, %A
  movw %S, (%A)

  ;linha 13
  leaw $16805, %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A

  ;linha 13
  leaw $16825, %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A





















