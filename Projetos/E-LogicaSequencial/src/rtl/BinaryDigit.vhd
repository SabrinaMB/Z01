-- Elementos de Sistemas
-- by Phelipe Muller
-- BinaryDigit.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity BinaryDigit is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC;
		load:    in STD_LOGIC;
		output: out STD_LOGIC
	);
end entity;

architecture arch of BinaryDigit is

  component Mux2Way is
    port(
      a: in STD_LOGIC;   -- entradas
      b: in STD_LOGIC;   -- entradas
      sel: in STD_LOGIC; -- Seletor
      q: out STD_LOGIC   -- saida
    );
  end component;

  component FlipFlopD is
    port(
      clock: in STD_LOGIC;   -- CLOCK
      d: in STD_LOGIC; -- ?
      clear: in STD_LOGIC;   -- saida
      preset: in STD_LOGIC;   -- saida
      q: out STD_LOGIC   -- saida
    );
  end component;

  signal tmp, ph: STD_LOGIC;

begin
  mux: Mux2Way PORT MAP (ph, input, load, tmp);
  flip: FlipFlopD PORT MAP (clock, tmp, '0', '0', ph);
	output <= ph;

end architecture;
