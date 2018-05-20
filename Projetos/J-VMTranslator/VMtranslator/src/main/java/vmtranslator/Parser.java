/**
 * Curso: Elementos de Sistemas
 * Arquivo: Parser.java
 * Created by Luciano Soares <lpsoares@insper.edu.br>
 * Date: 2/05/2017
 *
 * Adaptado por Rafael Corsi <rafael.corsi@insper.edu.br>
 * Date: 5/2018
 */
package vmtranslator;

import java.io.*;

/**
 * Encapsula o código de leitura. Carrega as instruções na linguagem de máquina virtual a pilha,
 * analisa, e oferece acesso aos comandos.
 * Além disso, remove todos os espaços em branco e comentários.
 */
public class Parser {

    public String currentCommand = "";  // comando atual
    private BufferedReader fileReader;  // leitor de arquivo

    /** Enumerator para os tipos de comandos de Linguagem de Máquina Virtua a Pilha. */
    public static enum CommandType {
        C_ARITHMETIC,      // comandos aritméticos
        C_PUSH,            // comandos de push
        C_POP,             // comandos de pop
        C_LABEL,           // label
        C_GOTO,            // comando goto
        C_IF,              // comando if-goto
        C_FUNCTION,        // declaracao de funcao
        C_RETURN,          // retorno de funcao
        C_CALL             // chamada de funcao
    }

    /**
     * Abre o arquivo de entrada VM e se prepara para analisá-lo.
     * @param file arquivo VM que será feito o parser.
     */
    public Parser(String file) throws FileNotFoundException {
        this.fileReader = new BufferedReader(new FileReader(file));
    }

    /**
     * Carrega um comando e avança seu apontador interno para o próxima
     * linha do arquivo de entrada. Caso não haja mais linhas no arquivo de
     * entrada o método retorna "Falso", senão retorna "Verdadeiro".
     * @return Verdadeiro se ainda há instruções, Falso se as instruções terminaram.
     */
    public Boolean advance() throws IOException {
    	if(fileReader.readLine()  != null) {
            return true;
        }
    	else{
    		return false;
    	}
    }

    /**
     * Retorna o comando "intrução" atual (sem o avanço)
     * @return a instrução atual para ser analilisada
     * @throws IOException 
     */
    public String command() throws IOException {
    	currentCommand = fileReader.readLine();
    	for(int i =0; i< currentCommand.length();i++){
    		if (currentCommand.charAt(i) == '/' && currentCommand.charAt(i+1) =='/'){
    			currentCommand = currentCommand.substring(0, i);
    		}
    		if (currentCommand.charAt(i) == ' ' && currentCommand.length() != (i+1)){
    			if (currentCommand.charAt(i+1) == ' '){
    				currentCommand = currentCommand.substring(0,i+1) + currentCommand.substring(i+2,currentCommand.length()-1); 
    			}
    		}
    	
    		
    	}
    	if (currentCommand == ""){
    		this.advance();
    		this.command();
    	}
    	
      return currentCommand;
    }

    /**
     * Retorna o tipo da instrução passada no argumento:
     *  C_PUSH para push, por exemplo push constant 1
     *  C_POP para pop, por exemplo pop constant 2
     * @param  command instrução a ser analisada.
     * @return o tipo da instrução.
     */
    public CommandType commandType(String command) {
    	if(command.charAt(0) == 'p' && command.charAt(1) == 'u'){
			return CommandType.C_PUSH;
		}
	if (command.charAt(0) == 'p' && command.charAt(1) == 'o'){
			return CommandType.C_POP;
		}
	
	if (command.charAt(0) == 'c' && command.charAt(1) == 'a'){
		return CommandType.C_CALL;    	}
	
	if (command.charAt(0) == 'l' && command.charAt(1) == 'a'){
		return CommandType.C_LABEL;
	}
	
	if (command.charAt(0) == 'g' && command.charAt(1) == 'o'){
		return CommandType.C_GOTO;
	}
	
	if (command.charAt(0) == 'i' && command.charAt(1) == 'f'){
		return CommandType.C_IF;
	}
	
	if (command.charAt(0) == 'f' && command.charAt(1) == 'u'){
		return CommandType.C_FUNCTION;
	}
	
	if (command.charAt(0) == 'r' && command.charAt(1) == 'e'){
		return CommandType.C_RETURN;
	}

	else {
		return CommandType.C_ARITHMETIC;
		}
    	
    }


    /**
     * Retorna o primeiro argumento de um comando push ou pop passada no argumento.
     * Se for um comando aritmético, retorna o próprio texto do comando
     * Deve ser chamado somente quando commandType() é diferente de C_RETURN.
     * @param  command instrução a ser analisada.
     * @return somente o símbolo ou o valor número da instrução.
     */
    public String arg1(String command) {
    	if (commandType(command) == CommandType.C_RETURN){
    		return command;
    		
    	}
    	else{
    		if(commandType(command) == CommandType.C_ARITHMETIC){
    			return command;
    		}
    		else if((commandType(command) == CommandType.C_PUSH) || (commandType(command) == CommandType.C_CALL)){
    			int i = 5;
    			while(command.charAt(i) != ' '){
    				i += 1;
    			}
    			
    			return command.substring(5,i);
    		
    		}
    		else if(commandType(command) == CommandType.C_POP){
    			int i = 4;
    			while(command.charAt(i) != ' '){
    				i += 1;
    			}
    			return command.substring(4,i);  			
    		}
    		else{
    			int i = 9;
    			while(command.charAt(i) != ' '){
    				i += 1;
    			}
    			return command.substring(9,i);  			
    		}
    	}
    }

    /**
     * Retorna o segundo argumento de um comando push ou pop passada no argumento.
     * Deve ser chamado somente quando commandType() é C_PUSH, C_POP, C_FUNCTION, ou C_CALL.
     * @param  command instrução a ser analisada.
     * @return o símbolo da instrução (sem os dois pontos).
     */
    public Integer arg2(String command) {
    	if ((commandType(command) == CommandType.C_PUSH) || (commandType(command) == CommandType.C_CALL)){
    		int i = 5;
			while(command.charAt(i) != ' '){
				i += 1;
			}
			return Integer.parseInt(command.substring(i+1,command.length()));
    	}
    	
    	if (commandType(command) == CommandType.C_POP){
    		int i = 4;
			while(command.charAt(i) != ' '){
				i += 1;
			}
			return Integer.parseInt(command.substring(i+1,command.length()));
    	}
    	else{
    		int i = 9;
			while(command.charAt(i) != ' '){
				i += 1;
			}
			return Integer.parseInt(command.substring(i+1,command.length()));
    	}
    }

    // fecha o arquivo de leitura
    public void close() throws IOException {
        fileReader.close();
    }

}
