; 0 - POP this 0
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $0, %A
movw %A, %S
leaw $THIS, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; 1 - POP this 1
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $1, %A
movw %A, %S
leaw $THIS, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; 2 - POP this 2
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $2, %A
movw %A, %S
leaw $THIS, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; End
