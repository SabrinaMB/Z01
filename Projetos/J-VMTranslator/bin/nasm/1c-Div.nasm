; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH argument 0
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
; 2 - POP local 0
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
; 3 - PUSH constant 0
leaw $0, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 4 - POP local 1
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
; 5 - PUSH constant 1
leaw $1, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 6 - PUSH local 0
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
; 7 - GT
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
sub (%A), %D, %D
leaw $HTDCRQQI, %A
jg %D
nop
leaw $0, %A
movw %A, %D
movw (%A), %A
decw %A
decw %A
movw %D, (%A)
leaw $CX, %A
jmp
nop
HTDCRQQI:
leaw $0, %A
notw %A
movw %A, %D
leaw $SP, %A
movw (%A), %A
decw %A
decw %A
movw %D, (%A)
CX:
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 9 - PUSH local 0
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
; 11 - SUB
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
; 12 - POP local 0
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
; 13 - PUSH constant 1
leaw $1, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 14 - PUSH local 1
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
; 15 - ADD
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
; 16 - POP local 1
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
; 18 - PUSH local 1
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
; 21 - PUSH constant 15
leaw $15, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 22 - PUSH constant 5
leaw $5, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 24 - POP temp 1
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
leaw $Temp, %A
movw %A, %S
leaw $1, %A
addw %A, %S, %A
movw (%A), %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %S
decw %S
movw %S, (%A)
; End
