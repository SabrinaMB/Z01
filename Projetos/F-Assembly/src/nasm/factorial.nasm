; Arquivo: Factorial.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Calcula o fatorial do número em R0 e armazena o valor em R1.


leaw $1, %A   ; inicio verifica se R0 = 0 ou 1 coloca 1 em D e pula para o fim
movw %A, %D
leaw $0, %A
movw (%A), %S
decw %S
leaw $fim, %A
jle %S
nop 

leaw $0, %A   
movw (%A), %S   ; S = conteúdo R0
decw %S
decw %S         ; S = R0 - 2
leaw $3, %A   
movw %S, (%A)    ;coloca R0 - 2 em R3
leaw $fim, %A
jle %S
nop

; entrada R0 (arg1), R3 (contador)
; adiciono R0 e R0 por R3 vezes
; saida R1 - resultado

leaw $0, %A
movw (%A), %D   ; D = conteúdo de R0
leaw $3, %A
movw (%A), %S

mult:
movw $0, %A
addw (%A), %D, %D
decw %S
leaw $mult, %A
jg %S
nop


leaw $3, %A
movw (%A), %S
decw %S
movw %S, (%A)
leaw $0, %A
movw %D, (%A)
leaw $mult, %A
jg %S
nop

fim:
leaw $1, %A
movw %D, (%A)


