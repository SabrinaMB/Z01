; 0 - POP pointer 0
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
leaw $THIS, %A
movw %A, %S
leaw $0, %A
addw %A, %S, %A
movw (%A), %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %S
decw %S
movw %S, (%A)
; 1 - POP pointer 1
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
leaw $THAT, %A
movw %A, %S
leaw $1, %A
addw %A, %S, %A
smovw (%A), %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %S
decw %S
movw %S, (%A)
; End
