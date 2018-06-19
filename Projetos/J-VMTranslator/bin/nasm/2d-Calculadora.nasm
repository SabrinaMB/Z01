; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH constant 3
leaw $3, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 2 - PUSH constant 3
leaw $3, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 4 - POP temp 2
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $2, %A
movw %A, %S
leaw $5, %A
addw %S, %A, %A
movw %D, (%A)
; 7 - PUSH constant 0
leaw $0, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 8 - POP local 0
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $0, %A
movw %A, %S
leaw $LCL, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; 9 - PUSH argument 1
leaw $1, %A
movw %A, %S
leaw $ARG, %A
movw (%A), %A
addw %S, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 10 - POP local 1
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $1, %A
movw %A, %S
leaw $LCL, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; 11 - PUSH constant 0
leaw $0, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 12 - PUSH local 1
leaw $1, %A
movw %A, %S
leaw $LCL, %A
movw (%A), %A
addw %S, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 13 - EQ
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
leaw $APD, %A
je %S
nop
leaw %SP, %A
movw (%A), %A
movw $0, (%A)
leaw $HGKV, %A
jmp
nop
APD:
leaw %SP, %A
movw (%A), %A
movw $-1, (%A)
HGKV:
leaw %SP, %A
movw (%A), %A
incw %A
movw %A, %D
leaw $SP, %A
movw %D, (%A)
; 15 - PUSH local 0
leaw $0, %A
movw %A, %S
leaw $LCL, %A
movw (%A), %A
addw %S, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 16 - PUSH argument 0
leaw $0, %A
movw %A, %S
leaw $ARG, %A
movw (%A), %A
addw %S, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 17 - ADD
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
addw %D, (%A), %S
movw %S, (%A)
incw %A
movw %A, %D
leaw $SP, %A
movw %D, (%A)
; 18 - POP local 0
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $0, %A
movw %A, %S
leaw $LCL, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; 19 - PUSH local 1
leaw $1, %A
movw %A, %S
leaw $LCL, %A
movw (%A), %A
addw %S, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 20 - PUSH constant 1
leaw $1, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 21 - SUB
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
subw (%A), %D, %S
movw %S, (%A)
incw %A
movw %A, %D
leaw $SP, %A
movw %D, (%A)
; 22 - POP local 1
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $1, %A
movw %A, %S
leaw $LCL, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; 24 - PUSH local 0
leaw $0, %A
movw %A, %S
leaw $LCL, %A
movw (%A), %A
addw %S, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 27 - PUSH constant 1
leaw $1, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 28 - POP local 0
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $0, %A
movw %A, %S
leaw $LCL, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; 29 - PUSH argument 1
leaw $1, %A
movw %A, %S
leaw $ARG, %A
movw (%A), %A
addw %S, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 30 - POP local 1
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $1, %A
movw %A, %S
leaw $LCL, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; 31 - PUSH argument 1
leaw $1, %A
movw %A, %S
leaw $ARG, %A
movw (%A), %A
addw %S, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 32 - POP local 2
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $2, %A
movw %A, %S
leaw $LCL, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; 33 - PUSH argument 0
leaw $0, %A
movw %A, %S
leaw $ARG, %A
movw (%A), %A
addw %S, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 34 - PUSH constant 1
leaw $1, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 35 - SUB
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
subw (%A), %D, %S
movw %S, (%A)
incw %A
movw %A, %D
leaw $SP, %A
movw %D, (%A)
; 36 - POP local 3
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $3, %A
movw %A, %S
leaw $LCL, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; 37 - PUSH constant 0
leaw $0, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 38 - PUSH local 3
leaw $3, %A
movw %A, %S
leaw $LCL, %A
movw (%A), %A
addw %S, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 39 - EQ
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
leaw $OGF, %A
je %S
nop
leaw %SP, %A
movw (%A), %A
movw $0, (%A)
leaw $ADGU, %A
jmp
nop
OGF:
leaw %SP, %A
movw (%A), %A
movw $-1, (%A)
ADGU:
leaw %SP, %A
movw (%A), %A
incw %A
movw %A, %D
leaw $SP, %A
movw %D, (%A)
; 41 - PUSH local 2
leaw $2, %A
movw %A, %S
leaw $LCL, %A
movw (%A), %A
addw %S, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 42 - PUSH local 1
leaw $1, %A
movw %A, %S
leaw $LCL, %A
movw (%A), %A
addw %S, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 44 - POP local 2
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $2, %A
movw %A, %S
leaw $LCL, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; 45 - PUSH local 3
leaw $3, %A
movw %A, %S
leaw $LCL, %A
movw (%A), %A
addw %S, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 46 - PUSH constant 1
leaw $1, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 47 - SUB
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
subw (%A), %D, %S
movw %S, (%A)
incw %A
movw %A, %D
leaw $SP, %A
movw %D, (%A)
; 48 - POP local 3
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $3, %A
movw %A, %S
leaw $LCL, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; 50 - PUSH local 2
leaw $2, %A
movw %A, %S
leaw $LCL, %A
movw (%A), %A
addw %S, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; End
