/**
 * Curso: Elementos de Sistemas
 * Arquivo: Parser.java
 */

package assembler;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.LinkedList;
import java.util.Scanner;

/**
 * Encapsula o código de leitura. Carrega as instruções na linguagem assembly,
 * analisa, e oferece acesso as partes da instrução  (campos e símbolos).
 * Além disso, remove todos os espaços em branco e comentários.
 */
public class Parser {
	LinkedList<String> commands;
	LinkedList<String> dirty;
	String command;
	public String currentCommand = "";
	
	Scanner reader;
	int lineNumber = 0;
	

    /** Enumerator para os tipos de comandos do Assembler. */
    public enum CommandType {
        A_COMMAND,      // comandos LEA, que armazenam no registrador A
        C_COMMAND,      // comandos de calculos
        L_COMMAND       // comandos de Label (símbolos)
    }

    /**
     * Abre o arquivo de entrada NASM e se prepara para analisá-lo.
     * @param file arquivo NASM que será feito o parser.
     */
    public Parser(String file) {
    	 File arquivo = new File(file);

    	    try {

    	        reader = new Scanner(arquivo);

    	        
    	     
    	    } 
    	    catch (FileNotFoundException e) {
    	        e.printStackTrace();
    	    }
    				
    			
    		}



    /**
     * Carrega uma instrução e avança seu apontador interno para o próxima
     * linha do arquivo de entrada. Caso não haja mais linhas no arquivo de
     * entrada o método retorna "Falso", senão retorna "Verdadeiro".
     * @return Verdadeiro se ainda há instruções, Falso se as instruções terminaram.
     * @throws IOException 
     */
    public Boolean advance() {
    	String currentLine = reader.nextLine();
    	lineNumber++;
    	while (true){
    		
	    	if (currentLine == null){
	            return false;
	    	}
	        currentCommand = currentLine.replaceAll(";.*$", "").trim();
	        if (currentCommand.equals("")){
	            continue;
	        }
	        return true; 
    	}
    	
    		
    }

    /**
     * Retorna o comando "intrução" atual (sem o avanço)
     * @return a instrução atual para ser analilisada
     */
    public String command() {
        return currentCommand;

    }
    

    /**
     * Retorna o tipo da instrução passada no argumento:
     *  A_COMMAND para leaw, por exemplo leaw $1,%A
     *  L_COMMAND para labels, por exemplo Xyz: , onde Xyz é um símbolo.
     *  C_COMMAND para todos os outros comandos
     * @param  command instrução a ser analisada.
     * @return o tipo da instrução.
     */
    public CommandType commandType(String command) {
    	
    	if(command.charAt(command.length()-1) == ':'){
    		return CommandType.L_COMMAND;
    	}
    	else if (command.length() > 4){
    		if (command.charAt(0) == 'l'){
        		return CommandType.A_COMMAND;
    		}
    		else{
        		return CommandType.C_COMMAND;
        	}
    	}
    	else{
    		return CommandType.C_COMMAND;
    	}
    	
    }

    /**
     * Retorna o símbolo ou valor numérico da instrução passada no argumento.
     * Deve ser chamado somente quando commandType() é A_COMMAND.
     * @param  command instrução a ser analisada.
     * @return somente o símbolo ou o valor número da instrução.
     */
    public String symbol(String command) {
    	if (commandType(command) == CommandType.A_COMMAND){
    		for (int i=0; i<command.length(); i++){
    			if (command.charAt(i) == ','){
    				command = command.substring(6, i);
    			
    			}
    		}	
    	}
    		
    	return command;
    }

    /**
     * Retorna o símbolo da instrução passada no argumento.
     * Deve ser chamado somente quando commandType() é L_COMMAND.
     * @param  command instrução a ser analisada.
     * @return o símbolo da instrução (sem os dois pontos).
     */
    public String label(String command) {
    	if (commandType(command) == CommandType.L_COMMAND){
    		command = command.substring(0,command.length()-1);
    	}
    	return command;
    }

    /**
     * Separa os mnemônicos da instrução fornecida em tokens em um vetor de Strings.
     * Deve ser chamado somente quando CommandType () é C_COMMAND.
     * @param  command instrução a ser analisada.
     * @return um vetor de string contento os tokens da instrução (as partes do comando).
     */
    public String[] instruction(String command) {
    	command = command.replaceAll(",", " ");
    	String[] commands = command.split(" ");
    
    	return commands;
    	
    }

}
