--
-- Elementos de Sistemas - Aula 5 - Logica Combinacional
-- Rafael . Corsi @ insper . edu . br 
--
-- Arquivo exemplo para acionar os LEDs e ler os bottoes
-- da placa DE0-CV utilizada no curso de elementos de 
-- sistemas do 3s da eng. da computacao

----------------------------
-- Bibliotecas ieee       --
----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity TopLevel is
	port(
		SW      : in  std_logic_vector(9 downto 0);
		LEDR    : out std_logic_vector(9 downto 0));
end entity;

----------------------------
-- Implementacao do bloco -- 
----------------------------
architecture rtl of TopLevel is

--------------
-- signals
--------------
signal tmp: STD_LOGIC;
signal a, b, c: STD_LOGIC;
---------------
-- implementacao
---------------
begin

	a <= SW(0);
	b <= SW(1);
	c <= SW(2);
	tmp <= (a or b);
	LEDR(0) <= (c or tmp);
	
	
end rtl;
