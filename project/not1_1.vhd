--------------------------------------------------------------------------------
-- Company: Penn State University
-- Engineers: Brian Ghigiarelli & Bryan Cover
--
-- Create Date:    02:41:00 02/27/2007
-- Design Name:    CSE 477
-- Module Name:    not1_1 - Behavioral
-- Project Name:   
-- Target Device:  
-- Tool versions:  
-- Description:
--		  An inverter gate, single input, single output.
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
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

entity not1_1 is
    Port ( a : in std_logic;
           z : out std_logic);
end bg1inv1;

architecture Behavioral of not1_1 is

begin

	z <= (not a) after 101 ps;

end Behavioral;


