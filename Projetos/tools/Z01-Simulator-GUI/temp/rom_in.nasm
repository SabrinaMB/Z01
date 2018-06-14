leaw $1, %A
movw %A, %D
leaw $0, %A
movw (%A), %S
leaw $41, %A
je %S
nop
leaw $0, %A
movw (%A), %D
leaw $2, %A
movw %D, (%A)
movw (%A), %S
decw %S
leaw $3, %A
movw %S, (%A)
leaw $41, %A
jle %S
nop
leaw $2, %A
movw (%A), %S
leaw $0, %A
addw (%A), %D, %D
decw %S
leaw $2, %A
movw %S, (%A)
leaw $2, %A
notw %A
incw %A
addw %A, %S, %S
leaw $18, %A
jg %S
nop
leaw $0, %A
movw %D, (%A)
leaw $3, %A
movw (%A), %S
decw %S
movw %S, (%A)
leaw $18, %A
jge %S
nop
leaw $1, %A
movw %D, (%A)






















































































































































































































