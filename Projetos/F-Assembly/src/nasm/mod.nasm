; Arquivo: Mod.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Divide o número posicionado na RAM[1] pelo número posicionado no RAM[2] e armazena o resto na RAM[0].
leaw $1, %A
movw (%A), %D ; R1
leaw $0, %A
movw %A, %S ; S = 0
leaw $2, %A ; R2
subw %D, (%A), %D
incw %S
leaw %4, %A
jge %D
nop
decw %S
leaw $0, %A
movw %S, (%A)
