leaw $1, %A
movw (%A), %D
leaw $8, %A
jge %D
nop
notw %D
leaw $1, %A
subw %A, %D, %D
leaw $0, %A
movw %D, (%A)


























































































