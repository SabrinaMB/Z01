; 0 - PUSH constant 17
leaw $17, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 1 - PUSH constant 17
leaw $17, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 2 - EQ
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
leaw $XNW, %A
je %S
nop
leaw %SP, %A
movw (%A), %A
movw $0, (%A)
leaw $WVRK, %A
jmp
nop
XNW:
leaw %SP, %A
movw (%A), %A
movw $-1, (%A)
WVRK:
leaw %SP, %A
movw (%A), %A
incw %A
movw %A, %D
leaw $SP, %A
movw %D, (%A)
; 3 - PUSH constant 17
leaw $17, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 4 - PUSH constant 16
leaw $16, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 5 - EQ
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
leaw $OIN, %A
je %S
nop
leaw %SP, %A
movw (%A), %A
movw $0, (%A)
leaw $QNUD, %A
jmp
nop
OIN:
leaw %SP, %A
movw (%A), %A
movw $-1, (%A)
QNUD:
leaw %SP, %A
movw (%A), %A
incw %A
movw %A, %D
leaw $SP, %A
movw %D, (%A)
; 6 - PUSH constant 16
leaw $16, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 7 - PUSH constant 17
leaw $17, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 8 - EQ
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
leaw $KDB, %A
je %S
nop
leaw %SP, %A
movw (%A), %A
movw $0, (%A)
leaw $OCIQ, %A
jmp
nop
KDB:
leaw %SP, %A
movw (%A), %A
movw $-1, (%A)
OCIQ:
leaw %SP, %A
movw (%A), %A
incw %A
movw %A, %D
leaw $SP, %A
movw %D, (%A)
; 9 - PUSH constant 892
leaw $892, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 10 - PUSH constant 891
leaw $891, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 11 - LT
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
leaw $QKWUYQ, %A
jl %S
nop
leaw %SP, %A
movw (%A), %A
movw $0, (%A)
leaw $NJQZMXE, %A
jmp
nop
QKWUYQ:
leaw %SP, %A
movw (%A), %A
movw $-1, (%A)
NJQZMXE:
leaw %SP, %A
movw (%A), %A
incw %A
movw %A, %D
leaw $SP, %A
movw %D, (%A)
; 12 - PUSH constant 891
leaw $891, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 13 - PUSH constant 892
leaw $892, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 14 - LT
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
leaw $WWJAMR, %A
jl %S
nop
leaw %SP, %A
movw (%A), %A
movw $0, (%A)
leaw $KHRVOIR, %A
jmp
nop
WWJAMR:
leaw %SP, %A
movw (%A), %A
movw $-1, (%A)
KHRVOIR:
leaw %SP, %A
movw (%A), %A
incw %A
movw %A, %D
leaw $SP, %A
movw %D, (%A)
; 15 - PUSH constant 891
leaw $891, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 16 - PUSH constant 891
leaw $891, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 17 - LT
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
leaw $APINAN, %A
jl %S
nop
leaw %SP, %A
movw (%A), %A
movw $0, (%A)
leaw $XPFIMRZ, %A
jmp
nop
APINAN:
leaw %SP, %A
movw (%A), %A
movw $-1, (%A)
XPFIMRZ:
leaw %SP, %A
movw (%A), %A
incw %A
movw %A, %D
leaw $SP, %A
movw %D, (%A)
; 18 - PUSH constant 32767
leaw $32767, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 19 - PUSH constant 32766
leaw $32766, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 20 - GT
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
leaw $VSOGQ, %A
jg %S
nop
leaw %SP, %A
movw (%A), %A
movw $0, (%A)
leaw $AITB, %A
jmp
nop
VSOGQ:
leaw %SP, %A
movw (%A), %A
movw $-1, (%A)
AITB:
leaw %SP, %A
movw (%A), %A
incw %A
movw %A, %D
leaw $SP, %A
movw %D, (%A)
; 21 - PUSH constant 32766
leaw $32766, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 22 - PUSH constant 32767
leaw $32767, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 23 - GT
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
leaw $XIJZU, %A
jg %S
nop
leaw %SP, %A
movw (%A), %A
movw $0, (%A)
leaw $AXAI, %A
jmp
nop
XIJZU:
leaw %SP, %A
movw (%A), %A
movw $-1, (%A)
AXAI:
leaw %SP, %A
movw (%A), %A
incw %A
movw %A, %D
leaw $SP, %A
movw %D, (%A)
; 24 - PUSH constant 32766
leaw $32766, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 25 - PUSH constant 32766
leaw $32766, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 26 - GT
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
leaw $NCBBN, %A
jg %S
nop
leaw %SP, %A
movw (%A), %A
movw $0, (%A)
leaw $RPFB, %A
jmp
nop
NCBBN:
leaw %SP, %A
movw (%A), %A
movw $-1, (%A)
RPFB:
leaw %SP, %A
movw (%A), %A
incw %A
movw %A, %D
leaw $SP, %A
movw %D, (%A)
; 27 - PUSH constant 57
leaw $57, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 28 - PUSH constant 31
leaw $31, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 29 - PUSH constant 53
leaw $53, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 30 - ADD
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
; 31 - PUSH constant 112
leaw $112, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 32 - SUB
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
; 33 - NEG
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
negw %D
movw %D, (%A)
; 34 - AND
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
andw (%A), %D, %S
movw %S, (%A)
incw %A
movw %A, %D
leaw $SP, %A
movw %D, (%A)
; 35 - PUSH constant 82
leaw $82, %A
movw %A, %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
incw %A
movw %A, %S
leaw $SP, %A
movw %S, (%A)
; 36 - OR
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
orw (%A), %D, %S
movw %S, (%A)
incw %A
movw %A, %D
leaw $SP, %A
movw %D, (%A)
; 37 - NOT
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
notw %D
movw %D, (%A)
; End
