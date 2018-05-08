/**
 * Curso: Elementos de Sistemas
 * Arquivo: SymbolTable.java
 */

package assembler;

import java.util.HashMap;

public class SymbolTable {
//	Usaremos HashMap pra criar um Dicionário com os Simbolos que precisamos
	Map<String,Integer> Tabela_de_Simbolos = new HashMap<String,Integer>();

    public SymbolTable() {
    	
//Vamos adicionar alguns valores a nossa lista utilizando o metodo put
//    	Espaços da memoria
    	Tabela_de_Simbolos.put("R0", 0);
    	Tabela_de_Simbolos.put("R1", 1);
    	Tabela_de_Simbolos.put("R2", 2);
    	Tabela_de_Simbolos.put("R3", 3);
    	Tabela_de_Simbolos.put("R4", 4);
    	Tabela_de_Simbolos.put("R5", 5);
    	Tabela_de_Simbolos.put("R6", 6);
    	Tabela_de_Simbolos.put("R7", 7);
    	Tabela_de_Simbolos.put("R8", 8);
    	Tabela_de_Simbolos.put("R9", 9);
    	Tabela_de_Simbolos.put("R10", 10);
    	Tabela_de_Simbolos.put("R11", 11);
    	Tabela_de_Simbolos.put("R12", 12);
    	Tabela_de_Simbolos.put("R13", 13);
    	Tabela_de_Simbolos.put("R14", 14);
    	Tabela_de_Simbolos.put("R15", 15);
//    	Simbolos Especiais
    	Tabela_de_Simbolos.put("SP", 0);
    	Tabela_de_Simbolos.put("LCL", 1);
    	Tabela_de_Simbolos.put("ARG", 2);
    	Tabela_de_Simbolos.put("THIS", 3);
    	Tabela_de_Simbolos.put("THAT", 4);
    	Tabela_de_Simbolos.put("SCREEN", 16384);
    	Tabela_de_Simbolos.put("LED", 21184);
    	Tabela_de_Simbolos.put("SW", 21185);

    }


    public void addEntry(String symbol, int address) {
//    	Utilizando Put para criar espaços novos definidos pelo usuario na hora de criar o codigo
    	Tabela_de_Simbolos.put(symbol, address);
    }

    public Boolean contains(String symbol) {
//      Usando constainsKey para buscar elementos
    	return Tabela_de_Simbolos.containsKey(symbol);
    }

    public Integer getAddress(String symbol) {
//    	Puxando os valores da Tabela_de_Simbolos
    	return Tabela_de_Simbolos.get(symbol);
    }

}
