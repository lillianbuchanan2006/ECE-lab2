----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2026 09:14:39 AM
-- Design Name: 
-- Module Name: sevenseg_decoder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder is
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
end sevenseg_decoder;

architecture Behavioral of sevenseg_decoder is

  --  component sevenseg_decoder is 
  --      port (
  --          i_Hex : in std_logic;
  --          o_seg_n : out std_logic; 
  --      );
  --      end component sevenseg_decoder;
  


begin
  with i_Hex select
  o_seg_n <=  "0000000" when "0000",
        "0010" when "0001",
        "0100" when "0010",
        "0010" when "0011",
        "0100" when "0100",
        "0010" when "0101",
        "0100" when "0110",
        "0010" when "0111",
        "0100" when "1000",
        "0010" when "1001",
        "1110111" when "1010", -- A
        "1111100" when "1011",
        "1011000" when "1100",
        "1011110" when "1101",
        "1111001" when "1110",--14
        "1110001" when "1111", --15
        "0000000" when others;


end Behavioral;
