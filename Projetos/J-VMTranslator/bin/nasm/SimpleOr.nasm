; 0 - AND
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
orw (%A), %D, %S
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; End
