--------------------------------------------------------------------------------
-- Company: The Pennsylvania State University
-- Engineers: Brian Ghigiarelli and Bryan Cover
--
-- Create Date:    02:44:02 02/27/07
-- Design Name:    CSE 477
-- Module Name:    notbuf1_1 - Behavioral
-- Project Name:   
-- Target Device:  
-- Tool versions:  
-- Description:
--			Not gate when e=1, else unknown
--			'e' is output enable, active high
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

entity notbuf1_1 is
    Port ( a : in std_logic;
	 		  e : in std_logic;
           z : out std_logic);
end notbuf1_1;

architecture Behavioral of notbuf1_1 is

begin

	z <= not a after 121 ps when e = '1' else
          'Z' after 121 ps;

end Behavioral;
