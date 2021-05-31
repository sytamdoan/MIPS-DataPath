----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/20/2021 01:50:45 PM
-- Design Name: 
-- Module Name: Program Counter - Behavioral
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

entity Program_Counter is
Port ( Din: in STD_LOGIC_VECTOR(31 downto 0);
       Reset: in STD_LOGIC;
       clk: in STD_LOGIC;
       Dout: out STD_LOGIC_VECTOR(31 downto 0));
end Program_Counter;

architecture Behavioral of Program_Counter is
signal Dout_sig: STD_LOGIC_VECTOR(31 downto 0);
begin

process (clk,Reset)
begin
if(rising_edge(clk)) then
    if(Reset = '1') then
        Dout_sig <= x"00000000";
    else
        Dout_sig <= Din;
    end if;
end if;
end process;

Dout <= Dout_sig;

end Behavioral;

