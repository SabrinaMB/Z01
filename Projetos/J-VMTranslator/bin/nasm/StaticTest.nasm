; 0 - PUSH constant 111
leaw $111, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 1 - PUSH constant 333
leaw $333, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 2 - PUSH constant 888
leaw $888, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 3 - POP static 8
leaw $SP, %A
movw (%A), %A
dec %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $LCL, %A
movw (%A), %S
leaw $scripts/../../I-VM/src/vmExamples/StaticTest-8 ,%A
addw %A, %S, %A
movw %D, (%A)
; 4 - POP static 3
leaw $SP, %A
movw (%A), %A
dec %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $LCL, %A
movw (%A), %S
leaw $scripts/../../I-VM/src/vmExamples/StaticTest-3 ,%A
addw %A, %S, %A
movw %D, (%A)
; 5 - POP static 1
leaw $SP, %A
movw (%A), %A
dec %A
movw (%A), %D
movw %A, %S
leaw $SP, %A
movw %S, (%A)
leaw $LCL, %A
movw (%A), %S
leaw $scripts/../../I-VM/src/vmExamples/StaticTest-1 ,%A
addw %A, %S, %A
movw %D, (%A)
; 6 - PUSH static 3
leaw $3, %A
movw %A, %S
leaw $scripts/../../I-VM/src/vmExamples/StaticTest-3 ,%A
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
; 7 - PUSH static 1
leaw $1, %A
movw %A, %S
leaw $scripts/../../I-VM/src/vmExamples/StaticTest-1 ,%A
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
; 8 - SUB
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
; 9 - PUSH static 8
leaw $8, %A
movw %A, %S
leaw $scripts/../../I-VM/src/vmExamples/StaticTest-8 ,%A
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
; 10 - ADD
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
