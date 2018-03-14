library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all; 

entity BarrelShifter8 is
	port ( 
			a:    in  STD_LOGIC_VECTOR(7 downto 0);   -- input vector
			dir:  in  std_logic;                       -- 0=>left 1=>right
			size: in  STD_LOGIC_VECTOR(2 downto 0);    -- shift amount
			q:    out STD_LOGIC_VECTOR(7 downto 0));  -- output vector (shifted)
end entity;

architecture barrel8 of BarrelShifter8 is
begin


		q<= a when (size = "000" and dir = '0') else
			a(6 downto 0) & a(7) when (size = "001" and dir = '0') else
			a(5 downto 0) & a(7 downto 6) when (size = "010" and dir = '0') else
			a(4 downto 0) & a(7 downto 5) when (size = "011" and dir = '0') else
			a(3 downto 0) & a(7 downto 4) when (size = "100" and dir = '0') else
			a when (size = "000" and dir = '1') else
			a(0) & a(7 downto 1) when (size = "001" and dir = '1') else
			a(1 downto 0) & a(7 downto 2) when (size = "010" and dir = '1') else
			a(2 downto 0) & a(7 downto 3) when (size = "011" and dir = '1') else
			a(3 downto 0) & a(7 downto 4) when (size = "100" and dir = '1');


end barrel8;