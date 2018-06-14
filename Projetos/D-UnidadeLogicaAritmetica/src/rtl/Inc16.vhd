-- Elementos de Sistemas
-- by Luciano Soares
-- Inc16.vhd

-- Incrementador de 16 bits
-- adiciona 1 ao valore de entrada (adição aritmética)

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Inc16 is
	port(
		a   :  in STD_LOGIC_VECTOR(15 downto 0);
		q   : out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture rtl of Inc16 is

component HalfAdder is
	port(
		a,b:        in STD_LOGIC;   -- entradas
		soma,vaium: out STD_LOGIC   -- sum e carry
	);
end component;

	signal tmp : STD_LOGIC_VECTOR(15 downto 0);

begin
		half0: HalfAdder PORT MAP(a(0),'1',q(0),tmp(0));
		half1: HalfAdder PORT MAP(a(1),tmp(0),q(1),tmp(1));
		half2: HalfAdder PORT MAP(a(2),tmp(1),q(2),tmp(2));
		half3: HalfAdder PORT MAP(a(3),tmp(2),q(3),tmp(3));
		half4: HalfAdder PORT MAP(a(4),tmp(3),q(4),tmp(4));
		half5: HalfAdder PORT MAP(a(5),tmp(4),q(5),tmp(5));
		half6: HalfAdder PORT MAP(a(6),tmp(5),q(6),tmp(6));
		half7: HalfAdder PORT MAP(a(7),tmp(6),q(7),tmp(7));
		half8: HalfAdder PORT MAP(a(8),tmp(7),q(8),tmp(8));
		half9: HalfAdder PORT MAP(a(9),tmp(8),q(9),tmp(9));
		half10: HalfAdder PORT MAP(a(10),tmp(9),q(10),tmp(10));
		half11: HalfAdder PORT MAP(a(11),tmp(10),q(11),tmp(11));
		half12: HalfAdder PORT MAP(a(12),tmp(11),q(12),tmp(12));
		half13: HalfAdder PORT MAP(a(13),tmp(12),q(13),tmp(13));
		half14: HalfAdder PORT MAP(a(14),tmp(13),q(14),tmp(14));
		half15: HalfAdder PORT MAP(a(15),tmp(14),q(15),tmp(15));




end rtl;
