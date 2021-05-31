----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/20/2021 03:10:37 PM
-- Design Name: 
-- Module Name: ShiftLeftBy2 - Behavioral
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

entity ShiftLeftBy2 is
Port (Din:in STD_LOGIC_VECTOR(31 downto 0);
      Dout:out STD_LOGIC_VECTOR (31 downto 0));
end ShiftLeftBy2;

architecture Behavioral of ShiftLeftBy2 is
signal Dout_sig: STD_LOGIC_VECTOR(31 downto 0);
begin

    process(Din)
    begin
        Dout_sig <= Din(29 downto 0) & "00";
    end process;

Dout <= Dout_sig;

end Behavioral;
