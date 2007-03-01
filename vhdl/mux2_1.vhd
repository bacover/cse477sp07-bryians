--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:    14:51:46 03/01/07
-- Design Name:    
-- Module Name:    mux2_1 - Behavioral
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
--			228 ps delay (2 nand gates)
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

entity mux2_1 is
    Port ( a : in std_logic_vector(1 downto 0);
           sel : in std_logic;
           sel_n : in std_logic;
           z : out std_logic);
end mux2_1;

architecture Structural of mux2_1 is

Component nand2
	Port ( a : in std_logic_vector(1 downto 0);
           z : out std_logic);
end component;

signal x1 : std_logic;
signal x2 : std_logic;

begin

	n1 :	nand2	port map (a(0)=>a(0),a(1)=>sel,z=>x1);
	n2	:	nand2	port map (a(0)=>a(1),a(1)=>sel_n,z=>x2);
	n3	:	nand2	port map	(a(0)=>x1,a(1)=>x2,z=>z);

end Structural;
