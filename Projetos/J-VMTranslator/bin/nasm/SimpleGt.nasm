; 0 - GT
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
leaw $VOZWI, %A
jg %S
nop
leaw %SP, %A
movw (%A), %A
movw $0, (%A)
leaw $HUQM, %A
jmp
nop
VOZWI:
leaw %SP, %A
movw (%A), %A
movw $-1, (%A)
HUQM:
leaw %SP, %A
movw (%A), %A
incw %A
movw %A, %D
leaw $SP, %A
movw %D, (%A)
; End
