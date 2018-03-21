-- Elementos de Sistemas
-- by Luciano Soares
-- Add16.vhd

-- Soma dois valores de 16 bits
-- ignorando o carry mais significativo

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Add16 is
	port(
		a   :  in STD_LOGIC_VECTOR(15 downto 0);
		b   :  in STD_LOGIC_VECTOR(15 downto 0);
		q   : out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture rtl of Add16 is

	component FullAdder is
		port(
			a,b,c:        in STD_LOGIC;   -- entradas
			soma,vaium: out STD_LOGIC   -- sum e carry
		);
	end component;

	signal tmp : STD_LOGIC_VECTOR(15 downto 0);

begin
	f0: FullAdder PORT MAP(a(0),b(0),'0',q(0),tmp(0));
	f1: FullAdder PORT MAP(a(1),b(1),tmp(0),q(1),tmp(1));
	f2: FullAdder PORT MAP(a(2),b(2),tmp(1),q(2),tmp(2));
	f3: FullAdder PORT MAP(a(3),b(3),tmp(2),q(3),tmp(3));
	f4: FullAdder PORT MAP(a(4),b(4),tmp(3),q(4),tmp(4));
	f5: FullAdder PORT MAP(a(5),b(5),tmp(4),q(5),tmp(5));
	f6: FullAdder PORT MAP(a(6),b(6),tmp(5),q(6),tmp(6));
	f7: sFullAdder PORT MAP(a(7),b(7),tmp(6),q(7),tmp(7));
	f8: FullAdder PORT MAP(a(8),b(8),tmp(7),q(8),tmp(8));
	f9: FullAdder PORT MAP(a(9),b(9),tmp(8),q(9),tmp(9));
	f10: FullAdder PORT MAP(a(10),b(10),tmp(9),q(10),tmp(10));
	f11: FullAdder PORT MAP(a(11),b(11),tmp(10),q(11),tmp(11));
	f12: FullAdder PORT MAP(a(12),b(12),tmp(11),q(12),tmp(12));
	f13: FullAdder PORT MAP(a(13),b(13),tmp(12),q(13),tmp(13));
	f14: FullAdder PORT MAP(a(14),b(14),tmp(13),q(14),tmp(14));
	f15: FullAdder PORT MAP(a(15),b(15),tmp(14),q(15),tmp(15));

end architecture;
