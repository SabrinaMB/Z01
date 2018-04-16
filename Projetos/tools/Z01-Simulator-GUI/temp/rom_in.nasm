leaw $0, %A
movw (%A), %D
leaw $1, %A
movw (%A), %S
decw %S
leaw $0, %A
addw %D, (%A), %D
decw %S
leaw $5, %A
jne %S
nop
leaw $3, %A
movw %D, (%A)























































































