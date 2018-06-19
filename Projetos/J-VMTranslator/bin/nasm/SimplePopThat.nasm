; 0 - POP that 0
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $0, %A
movw %A, %S
leaw $THAT, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; 1 - POP that 1
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $1, %A
movw %A, %S
leaw $THAT, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; 2 - POP that 2
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $2, %A
movw %A, %S
leaw $THAT, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; End
