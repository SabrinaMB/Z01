-- Elementos de Sistemas
-- by Luciano Soares
-- FullAdder.vhd

-- Implementa Full Adder

Library ieee;
use ieee.std_logic_1164.all;

entity FullAdder is
	port(
		a,b,c:      in STD_LOGIC;   -- entradas
		soma,vaium: out STD_LOGIC   -- sum e carry
	);
end entity;



architecture rtl of FullAdder is

	component HalfAdder is
		port(
			a,b:        in STD_LOGIC;   -- entradas
			soma,vaium: out STD_LOGIC   -- sum e carry
		);
	end component;

	signal tmp,q,t : STD_LOGIC;

begin
	full: HalfAdder PORT MAP (a, b, tmp, t);
	full2: HalfAdder PORT MAP (c, tmp, soma, q);
	vaium <= q or t;
end architecture;
