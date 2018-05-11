; Arquivo: Mod.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017


; Divide o número posicionado na RAM[1] pelo número posicionado no RAM[2] e armazena o resto na RAM[0].
leaw $1, %A
movw (%A), %D
leaw $2, %A
movw %D, %S
subw %D, (%A), %D
jge %D
nop
leaw $0, %A
movw %S, (%A)

; Divide o número posicionado na RAM[1] pelo número posicionado no RAM[2] e armazena o resultado na RAM[0].


