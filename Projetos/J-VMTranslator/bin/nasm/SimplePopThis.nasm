; 0 - POP this 0
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
; 1 - POP this 1
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
leaw $THIS, %A
movw %A, %S
leaw $1, %A
addw %A, %S, %A
movw (%A), %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %S
decw %S
movw %S, (%A)
; 2 - POP this 2
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
leaw $THIS, %A
movw %A, %S
leaw $2, %A
addw %A, %S, %A
movw (%A), %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %S
decw %S
movw %S, (%A)
; End
