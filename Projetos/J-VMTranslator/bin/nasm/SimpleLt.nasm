; 0 - LT
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
movw (%A), %A
subw (%A), %D, %S
leaw $QYOKSM, %A
jl %S
nop
leaw %SP, %A
movw (%A), %A
movw $0, (%A)
leaw $GHNTOKU, %A
jmp
nop
QYOKSM:
leaw %SP, %A
movw (%A), %A
movw $-1, (%A)
GHNTOKU:
leaw %SP, %A
movw (%A), %A
incw %A
movw %A, %D
leaw $SP, %A
movw %D, (%A)
; End
