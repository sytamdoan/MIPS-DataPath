----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/20/2021 01:54:28 PM
-- Design Name: 
-- Module Name: ALU_Control - Behavioral
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

entity ALU_Control is
Port ( Din:in STD_LOGIC_VECTOR(5 downto 0);
       ALUop:in STD_LOGIC_VECTOR(3 downto 0);
       Dout:out STD_LOGIC_VECTOR(3 downto 0));
end ALU_Control;

architecture Behavioral of ALU_Control is
signal Dout_sig: STD_LOGIC_VECTOR(3 downto 0);

begin

    process(Din,ALUop)
    begin
    if(ALUop = "0010") then
        case Din is
        when "100000" => --Add
            Dout_sig <= "0010";
        when "100001" => --Add unsigned
            Dout_sig <= "0010";
        when "100010" => --Subtract
            Dout_sig <= "0110";
        when "100011" => --Subtract unsigned
            Dout_sig <= "0110";
        when "100100" => --And
            Dout_sig <= "0000";
        when "100101" => --Or
            Dout_sig <= "0001";
        when "100110" => --Xor
            Dout_sig <= "0011";
        when "100111" => --Nor
            Dout_sig <= "1100";
        when "101010" => --Set less Than 
            Dout_sig <= "0111";
        when "101011" => --Set less Than unsigned
            Dout_sig <= "0111";
        when others =>
            Dout_sig <= "0000";   
        end case;
    elsif(ALUop = "0000") then --Add
        Dout_Sig <= "0010";
    elsif(ALUop = "0001") then --Subtract
        Dout_Sig <= "0110";
    elsif(ALUop = "0011") then --And
        Dout_Sig <= "0000";
    elsif(ALUop = "0100") then --Or
        Dout_Sig <= "0001";
    elsif(ALUop = "0101") then --Branch on Not Equal
        Dout_Sig <= "0110";
    elsif(ALUop = "0110") then --Set Less Than
        Dout_Sig <= "0111";
    else
        Dout_Sig <= "0000";
    end if;
    end process;
    
Dout <= Dout_sig;

end Behavioral;