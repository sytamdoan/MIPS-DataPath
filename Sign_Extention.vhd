----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/20/2021 02:19:35 PM
-- Design Name: 
-- Module Name: Sign_Extention - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sign_Extention is
Port (Din:in STD_LOGIC_VECTOR(15 downto 0);
      Dout:out STD_LOGIC_VECTOR (31 downto 0));
end Sign_Extention;

architecture Behavioral of Sign_Extention is

begin


    process(Din)
    begin
        Dout <= std_logic_vector(resize(signed(Din), Dout'length));
    end process;


end Behavioral;


