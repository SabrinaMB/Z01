-- Elementos de Sistemas
-- by Phelipe Muller
-- Ram64.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Ram64 is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR( 5 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture arch of Ram64 is

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

  component Ram8 is
    port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR( 2 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
  end component;

signal c0, c1, c2, c3, c4, c5, c6, c7: STD_LOGIC_VECTOR(15 downto 0);
signal s0, s1, s2, s3, s4, s5, s6, s7: STD_LOGIC_VECTOR(15 downto 0);
signal a0, a1: STD_LOGIC_VECTOR(2 downto 0);
signal internalLoad: STD_LOGIC_VECTOR(7 downto 0);

begin
	a0 <= address(2 downto 0);
	a1 <= address(5 downto 3);

	Dmux : DMux8Way16 PORT MAP(input, a1, c0, c1, c2, c3, c4, c5, c6, c7);

  R0 : Ram8 PORT MAP(clock, c0, internalLoad(0), a0, s0);
  R1 : Ram8 PORT MAP(clock, c1, internalLoad(1), a0, s1);
  R2 : Ram8 PORT MAP(clock, c2, internalLoad(2), a0, s2);
  R3 : Ram8 PORT MAP(clock, c3, internalLoad(3), a0, s3);
  R4 : Ram8 PORT MAP(clock, c4, internalLoad(4), a0, s4);
  R5 : Ram8 PORT MAP(clock, c5, internalLoad(5), a0, s5);
  R6 : Ram8 PORT MAP(clock, c6, internalLoad(6), a0, s6);
  R7 : Ram8 PORT MAP(clock, c7, internalLoad(7), a0, s7);

  Mux : Mux8Way16 PORT MAP(s0, s1, s2, s3, s4, s5, s6, s7, a1, output);


end architecture;
