--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:    14:48:03 03/01/07
-- Design Name:    
-- Module Name:    nand2 - Behavioral
-- Project Name:   
-- Target Device:  
-- Tool versions:  
-- Description:
--
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--			114 ps delay
-- 
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity nand2 is
    Port ( a : in std_logic_vector(1 downto 0);
           z : out std_logic);
end nand2;

architecture Behavioral of nand2 is

begin

	z <= a(0) nand a(1) after 114 ps;

end Behavioral;
