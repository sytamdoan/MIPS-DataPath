----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2021 08:04:45 PM
-- Design Name: 
-- Module Name: Add_Branch - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Add_Branch is
Port ( Din1: in STD_LOGIC_VECTOR(31 downto 0);
       Din2: in STD_LOGIC_VECTOR(31 downto 0);
       Dout: out STD_LOGIC_VECTOR(31 downto 0));
end Add_Branch;

architecture Behavioral of Add_Branch is
signal Dout_sig: STD_LOGIC_VECTOR(31 downto 0);

begin

process(Din1,Din2)
begin
    Dout_sig <= Din1 + Din2;
end process;

Dout <= Dout_sig;

end Behavioral;
