-- Elementos de Sistemas
-- developed by Luciano Soares
-- file: PC.vhd
-- date: 4/4/2017

-- Contador de 16bits
-- if (reset[t] == 1) out[t+1] = 0
-- else if (load[t] == 1)  out[t+1] = in[t]
-- else if (inc[t] == 1) out[t+1] = out[t] + 1
-- else out[t+1] = out[t]

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity PC is
    port(
        clock     : in  STD_LOGIC;
        increment : in  STD_LOGIC;
        load      : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
        input     : in  STD_LOGIC_VECTOR(15 downto 0);
        output    : out STD_LOGIC_VECTOR(15 downto 0)
    );
end entity;

architecture arch of PC is

component Register8 is
  port(
  	clock:   in STD_LOGIC;
  	input:   in STD_LOGIC_VECTOR(7 downto 0);
  	load:    in STD_LOGIC;
  	output: out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;

component Inc16 is
  port(
		a   :  in STD_LOGIC_VECTOR(15 downto 0);
		q   : out STD_LOGIC_VECTOR(15 downto 0)
	);
end component;

component Mux16 is
  port(
    a :  in STD_LOGIC_VECTOR(15 downto 0);
    b :  in STD_LOGIC_VECTOR(15 downto 0);
    sel :  in STD_LOGIC;
    q :  out STD_LOGIC_VECTOR(15 downto 0)
    );
end component;

signal output_temp: STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');

begin
  process(clock, reset, load, increment)
  begin
    if rising_edge(clock) then
      if (reset = '1') then
        output_temp <= "0000000000000000";
      elsif (load = '1') then
        output_temp <= input;
      elsif (increment = '1') then
        output_temp <= std_logic_vector( unsigned(output_temp) + 1 );
      else
        output_temp <= output_temp;
      end if;
    end if;
end process;
	output <= output_temp;
end architecture;
begin


end architecture;

