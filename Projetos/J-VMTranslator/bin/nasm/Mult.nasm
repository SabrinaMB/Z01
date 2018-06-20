; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH constant 7
leaw $7, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 2 - PUSH constant 2
leaw $2, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 3 - ADD
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
addw (%A), %D, %S
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 4 - PUSH constant 3
leaw $3, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 8 - PUSH constant 0
leaw $0, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 9 - POP local 0
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
leaw $LCL, %A
movw %A, %S
leaw $0, %A
addw %A, %S, %A
movw (%A), %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %S
decw %S
movw %S, (%A)
; 10 - PUSH argument 1
leaw $ARG, %A
movw %A, %D
leaw $1, %A
addw %D, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 11 - POP local 1
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
leaw $LCL, %A
movw %A, %S
leaw $1, %A
addw %A, %S, %A
movw (%A), %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %S
decw %S
movw %S, (%A)
; 12 - PUSH constant 0
leaw $0, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 13 - PUSH local 1
leaw $LCL, %A
movw %A, %D
leaw $1, %A
addw %D, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 14 - EQ
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
sub (%A), %D, %D
leaw $HOJM, %A
je %D
nop
leaw $0, %A
movw %A, %D
movw (%A), %A
decw %A
decw %A
movw %D, (%A)
leaw $EAMV, %A
jmp
nop
HOJM:
leaw $0, %A
notw %A
movw %A, %D
leaw $SP, %A
movw (%A), %A
decw %A
decw %A
movw %D, (%A)
EAMV:
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 16 - PUSH local 0
leaw $LCL, %A
movw %A, %D
leaw $0, %A
addw %D, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 17 - PUSH argument 0
leaw $ARG, %A
movw %A, %D
leaw $0, %A
addw %D, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 18 - ADD
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
addw (%A), %D, %S
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 19 - POP local 0
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
leaw $LCL, %A
movw %A, %S
leaw $0, %A
addw %A, %S, %A
movw (%A), %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %S
decw %S
movw %S, (%A)
; 20 - PUSH local 1
leaw $LCL, %A
movw %A, %D
leaw $1, %A
addw %D, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 21 - PUSH constant 1
leaw $1, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 22 - SUB
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
subw (%A), %D, %S
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 23 - POP local 1
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
leaw $LCL, %A
movw %A, %S
leaw $1, %A
addw %A, %S, %A
movw (%A), %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %S
decw %S
movw %S, (%A)
; 25 - PUSH local 0
leaw $LCL, %A
movw %A, %D
leaw $0, %A
addw %D, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; End
