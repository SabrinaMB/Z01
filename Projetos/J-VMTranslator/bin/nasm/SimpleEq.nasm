; 0 - EQ
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
sub (%A), %D, %D
leaw $DS, %A
je %D
nop
leaw $0, %A
movw %A, %D
movw (%A), %A
decw %A
decw %A
movw %D, (%A)
leaw $FDICXAWC, %A
jmp
nop
DS:
leaw $0, %A
notw %A
movw %A, %D
leaw $SP, %A
movw (%A), %A
decw %A
decw %A
movw %D, (%A)
FDICXAWC:
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; End
