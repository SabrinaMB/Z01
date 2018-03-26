-- Elementos de Sistemas
-- by Phelipe Muller
-- Ram8.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Ram8 is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR( 2 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture arch of Ram8 is

  component Mux8Way16 is
    port(
    a:   in  STD_LOGIC_VECTOR(15 downto 0);
    b:   in  STD_LOGIC_VECTOR(15 downto 0);
    c:   in  STD_LOGIC_VECTOR(15 downto 0);
    d:   in  STD_LOGIC_VECTOR(15 downto 0);
    e:   in  STD_LOGIC_VECTOR(15 downto 0);
    f:   in  STD_LOGIC_VECTOR(15 downto 0);
    g:   in  STD_LOGIC_VECTOR(15 downto 0);
    h:   in  STD_LOGIC_VECTOR(15 downto 0);
    sel: in  STD_LOGIC_VECTOR(2 downto 0);
    q:   out STD_LOGIC_VECTOR(15 downto 0));
  end component;

  component DMux8Way16 is
    port(
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
  end component;

  component Register16 is
    port(
    clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(15 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(15 downto 0));
  end component;

signal c0, c1, c2, c3, c4, c5, c6, c7: STD_LOGIC_VECTOR(15 downto 0);
signal s0, s1, s2, s3, s4, s5, s6, s7: STD_LOGIC_VECTOR(15 downto 0);

begin
  Dmux : DMux8Way16 PORT MAP(input, address, c0, c1, c2, c3, c4, c5, c6, c7);

  R0 : Register16 PORT MAP(clock, c0, load, s0);
  R1 : Register16 PORT MAP(clock, c1, load, s1);
  R2 : Register16 PORT MAP(clock, c2, load, s2);
  R3 : Register16 PORT MAP(clock, c3, load, s3);
  R4 : Register16 PORT MAP(clock, c4, load, s4);
  R5 : Register16 PORT MAP(clock, c5, load, s5);
  R6 : Register16 PORT MAP(clock, c6, load, s6);
  R7 : Register16 PORT MAP(clock, c7, load, s7);

  Mux : Mux8Way16 PORT MAP(s0, s1, s2, s3, s4, s5, s6, s7, address, output);


end architecture;
