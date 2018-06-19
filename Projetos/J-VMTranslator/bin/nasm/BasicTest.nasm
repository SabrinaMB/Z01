; 0 - PUSH constant 10
leaw $10, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 1 - PUSH local 0
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
; 2 - POP local 0
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
; 3 - PUSH constant 21
leaw $21, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 4 - PUSH constant 22
leaw $22, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 5 - POP argument 2
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $2, %A
movw %A, %S
leaw $ARG, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; 6 - POP argument 1
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $1, %A
movw %A, %S
leaw $ARG, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; 7 - PUSH constant 36
leaw $36, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 8 - POP this 6
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $6, %A
movw %A, %S
leaw $THIS, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; 9 - PUSH constant 42
leaw $42, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 10 - PUSH constant 45
leaw $45, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 11 - POP that 5
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $5, %A
movw %A, %S
leaw $THAT, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; 12 - POP that 2
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $2, %A
movw %A, %S
leaw $THAT, %A
movw (%A), %A
addw %S, %A, %A
movw %D, (%A)
; 13 - PUSH constant 510
leaw $510, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 14 - POP temp 6
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $6, %A
movw %A, %S
leaw $5, %A
addw %S, %A, %A
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
; 16 - PUSH that 5
leaw $5, %A
movw %A, %S
leaw $THAT, %A
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
; 18 - PUSH argument 1
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
; 19 - SUB
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
; 20 - PUSH this 6
leaw $6, %A
movw %A, %S
leaw $THIS, %A
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
; 21 - PUSH this 6
leaw $6, %A
movw %A, %S
leaw $THIS, %A
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
; 22 - ADD
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
; 23 - SUB
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
; 24 - PUSH temp 6
leaw $6, %A
movw %A, %S
leaw $5, %A
addw %S, %A, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 25 - ADD
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
; End
