----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/20/2021 01:53:16 PM
-- Design Name: 
-- Module Name: Control - Behavioral
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


entity Control is
Port ( Din: in STD_LOGIC_VECTOR(5 downto 0);
       Reset: in STD_LOGIC;
       RegDst: out STD_LOGIC;
       Branch: out STD_LOGIC;
       MemRead: out STD_LOGIC;
       MemtoReg: out STD_LOGIC;
       ALUOp: out STD_LOGIC_VECTOR (3 downto 0);
       MemWrite: out STD_LOGIC;
       ALUSrc: out STD_LOGIC;
       RegWrite: out STD_LOGIC );
end Control;

architecture Behavioral of Control is

begin

    process(Din,Reset)
    begin
        if(Reset = '1') then --Reset
            RegDst <= '0';
            Branch <= '0';
            MemRead <= '0';
            MemtoReg <= '0';
            ALUOp <= "0000";
            MemWrite <= '0';
            ALUSrc <= '0';
            RegWrite <= '0';  
        elsif(Din = "000000") then --R Type
            RegDst <= '1';
            Branch <= '0';
            MemRead <= '0';
            MemtoReg <= '0';
            ALUOp <= "0010";
            MemWrite <= '0';
            ALUSrc <= '0';
            RegWrite <= '1';
        elsif(Din = "001000") then --Add Immediate
            RegDst <= '0';
            Branch <= '0';
            MemRead <= '0';
            MemtoReg <= '0';
            ALUOp <= "0000";
            MemWrite <= '0';
            ALUSrc <= '1';
            RegWrite <= '1';
        elsif(Din = "001001") then --Add Immediate Unsigned
            RegDst <= '0';
            Branch <= '0';
            MemRead <= '0';
            MemtoReg <= '0';
            ALUOp <= "0000";
            MemWrite <= '0';
            ALUSrc <= '1';
            RegWrite <= '1';
        elsif(Din = "001100") then --And Immediate
            RegDst <= '0';
            Branch <= '0';
            MemRead <= '0';
            MemtoReg <= '0';
            ALUOp <= "0011";
            MemWrite <= '0';
            ALUSrc <= '1';
            RegWrite <= '1';
        elsif(Din = "001101") then --Or Immediate
            RegDst <= '0';
            Branch <= '0';
            MemRead <= '0';
            MemtoReg <= '0';
            ALUOp <= "0100";
            MemWrite <= '0';
            ALUSrc <= '1';
            RegWrite <= '1';
        elsif(Din = "100011") then --Load Word
            RegDst <= '0';
            Branch <= '0';
            MemRead <= '1';
            MemtoReg <= '1';
            ALUOp <= "0000";
            MemWrite <= '0';
            ALUSrc <= '1';
            RegWrite <= '1';
        elsif(Din = "101011") then --Store Word
            RegDst <= '0';
            Branch <= '0';
            MemRead <= '0';
            MemtoReg <= '0';
            ALUOp <= "0000";
            MemWrite <= '1';
            ALUSrc <= '1';
            RegWrite <= '0';
        elsif(Din = "000100") then --Branch on Equal Word
            RegDst <= '0';
            Branch <= '1';
            MemRead <= '0';
            MemtoReg <= '0';
            ALUOp <= "0001";
            MemWrite <= '0';
            ALUSrc <= '0';
            RegWrite <= '0';
        elsif(Din = "000101") then --Branch on Not Equal Word
            RegDst <= '0';
            Branch <= '1';
            MemRead <= '0';
            MemtoReg <= '0';
            ALUOp <= "0101";
            MemWrite <= '0';
            ALUSrc <= '0';
            RegWrite <= '0';
        elsif(Din = "001010") then --Set Less Than Immedate
            RegDst <= '0';
            Branch <= '0';
            MemRead <= '0';
            MemtoReg <= '0';
            ALUOp <= "0110";
            MemWrite <= '0';
            ALUSrc <= '1';
            RegWrite <= '1';
        elsif(Din = "001011") then --Set Less Than Immedate Unsigned
            RegDst <= '0';
            Branch <= '0';
            MemRead <= '0';
            MemtoReg <= '0';
            ALUOp <= "0110";
            MemWrite <= '0';
            ALUSrc <= '1';
            RegWrite <= '1';
        else                        --Other cases
            RegDst <= '0';
            Branch <= '0';
            MemRead <= '0';
            MemtoReg <= '0';
            ALUOp <= "0000";
            MemWrite <= '0';
            ALUSrc <= '0';
            RegWrite <= '0';
        end if;
    end process;
    

end Behavioral;
