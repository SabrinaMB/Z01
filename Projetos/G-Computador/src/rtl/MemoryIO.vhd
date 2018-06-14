library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MemoryIO is

   PORT(
        -- Sistema
        CLK_SLOW : IN  STD_LOGIC;
        CLK_FAST : IN  STD_LOGIC;
        RST      : IN  STD_LOGIC;

        -- RAM 16K
        ADDRESS   : IN  STD_LOGIC_VECTOR (14 DOWNTO 0);
        INPUT   : IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
        LOAD    : IN  STD_LOGIC ;
        OUTPUT    : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);

        -- LCD EXTERNAL I/OS
        LCD_CS_N     : OUT   STD_LOGIC;
        LCD_D        : INOUT STD_LOGIC_VECTOR(15 downto 0);
        LCD_RD_N     : OUT   STD_LOGIC;
        LCD_RESET_N  : OUT   STD_LOGIC;
        LCD_RS       : OUT   STD_LOGIC; -- (DCx) 0 : reg, 1: command
        LCD_WR_N     : OUT   STD_LOGIC;
        LCD_ON       : OUT   STD_LOGIC := '1';  -- liga e desliga o LCD
        LCD_INIT_OK  : OUT   STD_LOGIC;

        -- Switchs
        SW  : in std_logic_vector(9 downto 0);
        LED : OUT std_logic_vector(9 downto 0)

    );
end entity;


ARCHITECTURE logic OF MemoryIO IS

  component Screen is
      PORT(
          INPUT        : IN STD_LOGIC_VECTOR(15 downto 0);
          LOAD         : IN  STD_LOGIC;
          ADDRESS      : IN STD_LOGIC_VECTOR(13 downto 0);

          -- Sistema
          CLK_FAST : IN  STD_LOGIC;
          CLK_SLOW : IN  STD_LOGIC;
          RST      : IN  STD_LOGIC;

          -- LCD EXTERNAL I/OS
          LCD_INIT_OK  : OUT STD_LOGIC;
          LCD_CS_N     : OUT   STD_LOGIC;
          LCD_D        : INOUT STD_LOGIC_VECTOR(15 downto 0);
          LCD_RD_N     : OUT   STD_LOGIC;
          LCD_RESET_N  : OUT   STD_LOGIC;
          LCD_RS       : OUT   STD_LOGIC; -- (DCx) 0 : reg, 1: command
          LCD_WR_N     : OUT   STD_LOGIC
          );
  end component;

  component RAM16K IS
      PORT
      (
          address : IN STD_LOGIC_VECTOR (13 DOWNTO 0);
          clock   : IN STD_LOGIC  := '1';
          data    : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
          wren    : IN STD_LOGIC ;
          q      : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
      );
  end component;

  component Register16 is
    port(
      clock:   in std_logic;
      input:   in STD_LOGIC_VECTOR(15 downto 0);
      load:    in std_logic;
      output: out STD_LOGIC_VECTOR(15 downto 0)
      );
  end component;

-- Mux16
  component Mux16 is
    port(
      a:   in STD_LOGIC_VECTOR(15 downto 0);
      b:   in STD_LOGIC_VECTOR(15 downto 0);
      sel:    in std_logic;
      q: out STD_LOGIC_VECTOR(15 downto 0)
      );
  end component;

-- DMux4Way
  component DMux4Way is
    port(
      a:   in std_logic;
      sel:    in STD_LOGIC_VECTOR(15 downto 0);
      q0: out std_logic;
      q1: out std_logic;
      q2: out std_logic
      );
  end component;



--  fazer os signais 
signal address_screen: std_logic_vector(13 downto 0);
signal wren_ram: std_logic;
signal out_ram: std_logic_vector(15 downto 0);
signal load_reg: std_logic;
signal load_screen: std_logic;
signal sel_mux: std_logic;
signal sel_dmux: std_logic_vector(1 downto 0);
signal sw16 : std_logic_vector(15 downto 0);
signal led16 : std_logic_vector(15 downto 0);

BEGIN

RAM: RAM16K PORT MAP(
  address => ADDRESS(13 downto 0),
  clock => CLK_FAST,
  data => INPUT,
  wren => wren_ram,
  q => out_ram
  );

Register_inst: Register16 PORT MAP(
  clock => CLK_SLOW,
  input => INPUT,
  load => load_reg,
  output => led16
  );

Screen_inst: Screen PORT MAP(
  INPUT => INPUT,
  LOAD => load_screen,
  ADDRESS => ADDRESS(13 downto 0),
  CLK_FAST => CLK_FAST,
  CLK_SLOW => CLK_SLOW,
  RST => RST,
  LCD_INIT_OK => LCD_INIT_OK,
  LCD_CS_N => LCD_CS_N,
  LCD_D => LCD_D,
  LCD_RD_N => LCD_RD_N,
  LCD_RESET_N => LCD_RESET_N,
  LCD_RS => LCD_RS,
  LCD_WR_N => LCD_WR_N
  );

sel_dmux <= "00" when (ADDRESS <= "011111111111111") else --16383
            "01" when (ADDRESS =  "101001011000000") else -- 21184 
            "10" when (ADDRESS <= "101001010111111") else -- 21183;
            "11" ;

wren_ram <= '1' when (ADDRESS <= "011111111111111") else --16383
            '0';
load_reg <= '1' when (ADDRESS <= "101001011000000") else --16383
            '0';
load_screen <= '1' when (ADDRESS > "011111111111111") and (ADDRESS <= "101001010111111") else --16383
            '0';

OUTPUT <= out_ram when (ADDRESS <= "011111111111111") else 
          sw16;


sw16 <= "000000" & sw;
LED <= led16(9 downto 0);

END logic;
