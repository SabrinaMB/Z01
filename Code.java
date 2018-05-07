/**
 * Curso: Elementos de Sistemas
 * Arquivo: Code.java
 */

package assembler;

/**
 * Traduz mnemônicos da linguagem assembly para códigos binários da arquitetura Z0.
 */
public class Code {

    /**
     * Retorna o código binário do(s) registrador(es) que vão receber o valor da instrução.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 4 bits) com código em linguagem de máquina para a instrução.
     */
    public static String dest(String[] mnemnonic) {
    	if (mnemnonic.length == 2){
    		if (mnemnonic[1] == "%A") return "1000";
    		else if (mnemnonic[1] == "%S") return "0100";
    		else if (mnemnonic[1] == "%D") return "0010";
    		else if (mnemnonic[1] == "(%A)") return "0001";
    		
    	} else if (mnemnonic.length == 3){
    		if (mnemnonic[2] == "%A") return "1000";
    		else if (mnemnonic[2] == "%S") return "0100";
    		else if (mnemnonic[2] == "%D") return "0010";
    		else if (mnemnonic[2] == "(%A)") return "0001";
    		
    	} else if (mnemnonic.length == 4){
    		if (mnemnonic[0] == "movw"){
	    		char[] bin = {'0','0','0','0'};
	    		
	    		if (mnemnonic[2] == "%A") bin[0] = '1';
	    		else if (mnemnonic[2] == "%S") bin[1] = '1';
	    		else if (mnemnonic[2] == "%D") bin[2] = '1';
	    		else if (mnemnonic[2] == "(%A)") bin[3] = '1';
	    		
	    		if (mnemnonic[3] == "%A") bin[0] = '1';
	    		else if (mnemnonic[3] == "%S") bin[1] = '1';
	    		else if (mnemnonic[3] == "%D") bin[2] = '1';
	    		else if (mnemnonic[3] == "(%A)") bin[3] = '1';
	    		
	    		String out = String.valueOf(bin);
	    		return out;
    		} else{
    			if (mnemnonic[3] == "%A") return "1000";
        		else if (mnemnonic[3] == "%S") return "0100";
        		else if (mnemnonic[3] == "%D") return "0010";
        		else if (mnemnonic[3] == "(%A)") return "0001";
    		}
    	}
    	return "0000";
    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de cálculo.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 7 bits) com código em linguagem de máquina para a instrução.
     */
    public static String comp(String[] mnemnonic) {
    	char[] binAB = {'0','0'};
    	
    	// A e B
    	if (mnemnonic.length > 2){
    		if (mnemnonic[1] == "(%A)" || mnemnonic[2] == "(%A)") binAB[0] = '1';
    		if (mnemnonic[1] == "%S" || mnemnonic[2] == "%S") binAB[1] = '1';	
    	} 
    	else if (mnemnonic.length == 2){
    		if (mnemnonic[1] == "(%A)") binAB[0] = '1';
    		if (mnemnonic[1] == "%S") binAB[1] = '1';
    	}
    	
    	// Movw
    	if (mnemnonic[0] == "movw"){
    		String out = String.valueOf(binAB);
    		if (mnemnonic[2].contains("%A")) return out+"001100";
    		else return out+"110000";
    	}
    	
    	// Or
    	if (mnemnonic[0] == "orw"){
    		String out = String.valueOf(binAB);
    		return out+"010101";
    	}
    	
    	// And
    	if (mnemnonic[0] == "andw"){
    		String out = String.valueOf(binAB);
    		return out+"000000";
    	}
    	
    	// Add
    	if (mnemnonic[0] == "addw"){
    		String out = String.valueOf(binAB);
    		return out+"000010";
    	}
    	
    	// Inc
    	if (mnemnonic[0] == "incw"){
    		String out = String.valueOf(binAB);
    		if (mnemnonic[1].contains("%A"))return out+"110111";
    		else return out+"011111";
    	}
    	
    	// Dec
    	if (mnemnonic[0] == "decw"){
    		String out = String.valueOf(binAB);
    		if (mnemnonic[1].contains("%A")) return out+"110010";
    		else return out+"001110";
    	}
    	
    	// Not
    	if (mnemnonic[0] == "notw"){
    		String out = String.valueOf(binAB);
    		if (mnemnonic[1].contains("%A")) return out+"110001";
    		else return out+"001101";
    	}
    	
    	// Neg
    	if (mnemnonic[0] == "negw"){
    		String out = String.valueOf(binAB);
    		if (mnemnonic[1].contains("%A")) return out+"110011";
    		else return out+"001111";
    	}
    	
    	// Sub
    	if (mnemnonic[0] == "subw"){
    		String out = String.valueOf(binAB);
    		return out+"010011";
    	}
    	
    	// rSub
    	if (mnemnonic[0] == "rsubw"){
    		String out = String.valueOf(binAB);
    		return out+"000111";
    	}
    	
    	return null;
    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de jump (salto).
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 3 bits) com código em linguagem de máquina para a instrução.
     */
    public static String jump(String[] mnemnonic) {
    	if (mnemnonic[0] == "jmp") return "111";
    	else if (mnemnonic[0] == "je") return "010";
    	else if (mnemnonic[0] == "jne") return "101";
    	else if (mnemnonic[0] == "jg") return "001";
    	else if (mnemnonic[0] == "jge") return "011";
    	else if (mnemnonic[0] == "jl") return "100";
    	else if (mnemnonic[0] == "jle") return "110";
    	else return "000";
    }

    /**
     * Retorna o código binário de um valor decimal armazenado numa String.
     * @param  symbol valor numérico decimal armazenado em uma String.
     * @return Valor em binário (String de 15 bits) representado com 0s e 1s.
     */
    public static String toBinary(String symbol) {
    	int numero = Integer.parseInt(symbol);
    	String binario = new String();
    	while(numero > 0){
    		if(numero % 2 != 0){
    			binario = "1" + binario;
    		} else{
    			binario = "0" + binario;
    		}
    		numero /= 2;
    	}
    	while(binario.length() < 15){
    		binario = "0" + binario;
    	}
    	return binario;
    }

}
