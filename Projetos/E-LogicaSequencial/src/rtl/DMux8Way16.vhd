library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DMux8Way16 is
	port (
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			sel: in  STD_LOGIC_VECTOR(2 downto 0);
			q0:  out STD_LOGIC_VECTOR(15 downto 0);
			q1:  out STD_LOGIC_VECTOR(15 downto 0);
			q2:  out STD_LOGIC_VECTOR(15 downto 0);
			q3:  out STD_LOGIC_VECTOR(15 downto 0);
			q4:  out STD_LOGIC_VECTOR(15 downto 0);
			q5:  out STD_LOGIC_VECTOR(15 downto 0);
			q6:  out STD_LOGIC_VECTOR(15 downto 0);
			q7:  out STD_LOGIC_VECTOR(15 downto 0));
end entity;

architecture this_DMux8 of DMux8Way16 is
begin
   q0 <= a when(sel = "000") else q0;
   q1 <= a when(sel = "001") else q1;
   q2 <= a when(sel = "010") else q2;
   q3 <= a when(sel = "011") else q3;
   q4 <= a when(sel = "100") else q4;
   q5 <= a when(sel = "101") else q5;
   q6 <= a when(sel = "110") else q6;
   q7 <= a when(sel = "111") else q7;

end this_DMux8;
