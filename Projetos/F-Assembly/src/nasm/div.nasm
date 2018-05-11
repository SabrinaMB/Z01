; Arquivo: Div.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Divide R0 por R1 e armazena o resultado em R2.
; (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
; divisao para numeros inteiros positivos

leaw $0, %A
movw (%A), %D ; R0
leaw $0, %A
movw %A, %S ; S = 0
leaw $1, %A ; R1
subw %D, (%A), %D
incw %S
leaw %4, %A
jge %D
nop
decw %S
leaw $2, %A
movw %S, (%A)

