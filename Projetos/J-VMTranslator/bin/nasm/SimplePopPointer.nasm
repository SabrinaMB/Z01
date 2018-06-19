; 0 - POP pointer 0
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $THIS, %A
movw %D, (%A)
; 1 - POP pointer 1
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $THAT, %A
movw %D, (%A)
; End
