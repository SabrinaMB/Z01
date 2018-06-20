; 0 - GT
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
sub (%A), %D, %D
leaw $E, %A
jg %D
nop
leaw $0, %A
movw %A, %D
movw (%A), %A
decw %A
decw %A
movw %D, (%A)
leaw $DFCTXRH, %A
jmp
nop
E:
leaw $0, %A
notw %A
movw %A, %D
leaw $SP, %A
movw (%A), %A
decw %A
decw %A
movw %D, (%A)
DFCTXRH:
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; End
