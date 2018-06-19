; 0 - PUSH constant 5
leaw $5, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 1 - PUSH constant 9
leaw $9, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 2 - ADD
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
addw %D, (%A), %S
movw %S, (%A)
incw %A
movw %A, %D
leaw $SP, %A
movw %D, (%A)
; End
