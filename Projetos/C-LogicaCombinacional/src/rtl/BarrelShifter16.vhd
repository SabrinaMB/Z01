library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BarrelShifter16 is
	port ( 
			a:    in  STD_LOGIC_VECTOR(15 downto 0);   -- input vector
			dir:  in  std_logic;                       -- 0=>left 1=>right
			size: in  STD_LOGIC_VECTOR(2 downto 0);    -- shift amount
			q:    out STD_LOGIC_VECTOR(15 downto 0));  -- output vector (shifted)
end entity;

architecture barrel16 of BarrelShifter16 is
begin


		q<= a when (size = "000" and dir = '0') else
			a(14 downto 0) & a(15) when (size = "001" and dir = '0') else
			a(13 downto 0) & a(15 downto 14) when (size = "010" and dir = '0') else
			a(12 downto 0) & a(15 downto 13) when (size = "011" and dir = '0') else
			a(11 downto 0) & a(15 downto 12) when (size = "100" and dir = '0') else
			a(10 downto 0) & a(15 downto 11) when (size = "101" and dir = '0') else
			a(9 downto 0) & a(15 downto 10) when (size = "111" and dir = '0') else
			a when (size = "000" and dir = '1') else
			a(0) & a(15 downto 1) when (size = "001" and dir = '1') else
			a(1 downto 0) & a(15 downto 2) when (size = "010" and dir = '1') else
			a(2 downto 0) & a(15 downto 3) when (size = "011" and dir = '1') else
			a(3 downto 0) & a(15 downto 4) when (size = "100" and dir = '1') else
			a(4 downto 0) & a(15 downto 5) when (size = "101" and dir = '1') else
			a(5 downto 0) & a(15 downto 6) when (size = "111" and dir = '1');


end barrel16;