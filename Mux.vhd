----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/21/2021 02:01:08 PM
-- Design Name: 
-- Module Name: Mux - Behavioral
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

entity Mux_32bit is
Port (inputOne: in STD_LOGIC_VECTOR (31 downto 0); 
      inputTwo: in STD_LOGIC_VECTOR (31 downto 0);
      Sel: in STD_LOGIC; 
      Dout: out  STD_LOGIC_VECTOR (31 downto 0));
end Mux_32bit;

architecture Behavioral of Mux_32bit is

begin
    process(inputOne,inputTwo,Sel)
    begin
        if(Sel = '0') then
            Dout <= inputOne;
        else
            Dout <= inputTwo;
        end if;
    end process;

end Behavioral;
