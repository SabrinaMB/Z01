library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MemoryIO is

   PORT(
        -- Sistema
        CLK_SLOW : IN  STD_LOGIC;
        CLK_FAST : IN  STD_LOGIC;
        RST      : IN  STD_LOGIC;
        MUX_L    : IN  STD_LOGIC;
        DMUX_L   : IN STD_LOGIC_VECTOR(2 downto 0);

        -- RAM 16K
        ADDRESS		: IN  STD_LOGIC_VECTOR (14 DOWNTO 0);
        INPUT		: IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
        LOAD		: IN  STD_LOGIC ;
        OUTPUT		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);

        -- LCD EXTERNAL I/OS
        LCD_CS_N     : OUT   STD_LOGIC;
        LCD_D        : INOUT STD_LOGIC_VECTOR(15 downto 0);
        LCD_RD_N     : OUT   STD_LOGIC;
        LCD_RESET_N  : OUT   STD_LOGIC;
        LCD_RS       : OUT   STD_LOGIC;	-- (DCx) 0 : reg, 1: command
        LCD_WR_N     : OUT   STD_LOGIC;
        LCD_ON       : OUT   STD_LOGIC := '1';	-- liga e desliga o LCD
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
          RST 	   : IN  STD_LOGIC;

          -- LCD EXTERNAL I/OS
          LCD_INIT_OK  : OUT STD_LOGIC;
          LCD_CS_N     : OUT   STD_LOGIC;
          LCD_D        : INOUT STD_LOGIC_VECTOR(15 downto 0);
          LCD_RD_N     : OUT   STD_LOGIC;
          LCD_RESET_N  : OUT   STD_LOGIC;
          LCD_RS       : OUT   STD_LOGIC;	-- (DCx) 0 : reg, 1: command
          LCD_WR_N     : OUT   STD_LOGIC
          );
  end component;

  component RAM16K IS
      PORT
      (
          address	: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
          clock		: IN STD_LOGIC  := '1';
          data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
          wren		: IN STD_LOGIC ;
          q		   : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
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




signal LOAD_REG: STD_LOGIC;
signal LOAD_RAM: STD_LOGIC;
signal LOAD_SCREEN: STD_LOGIC;
signal DATA: STD_LOGIC_VECTOR(14 downto 0);
signal INSTRUCTION: STD_LOGIC_VECTOR(14 downto 0);
signal IN_REG: STD_LOGIC_VECTOR(14 downto 0);

BEGIN
  
  LOAD_RAM <= '1' when DMUX_L = "00";
  LOAD_REG <= '1' when DMUX_L = "01";
  LOAD_SCREEN <= '1' when DMUX_L = "10";

  RAM: RAM16K PORT MAP(
  address => ADDRESS, 
  clock => CLK_FAST, 
  data => INPUT (14 downto 0),
  wren => LOAD_RAM,
  q => INSTRUCTION
  );

  REG: Register16 PORT MAP (
    clock => CLK_SLOW,
    input => INPUT(9 downto 0),
    load => LOAD_REG,
    output => LED
    );

  SCREEN_log: Screen PORT MAP(
    INPUT => INPUT (14 downto 0),
    LOAD => LOAD_SCREEN,
    ADDRESS => ADDRESS(13 downto 0),
    CLK_FAST =>  CLK_FAST,
    CLK_SLOW => CLK_SLOW,
    RST => RST,
    LCD_INIT_OK => LCD_INIT_OK,
    LCD_CS_N => LCD_CS_N,
    LCD_D => LCD_D,
    LCD_RESET_N => LCD_RESET_N,
    LCD_RS => LCD_RS,
    LCD_WR_N => LCD_WR_N
    );

  OUTPUT <= INSTRUCTION when MUX_L = '1';
  OUTPUT<= SW when MUX_L = '0';




END logic;
