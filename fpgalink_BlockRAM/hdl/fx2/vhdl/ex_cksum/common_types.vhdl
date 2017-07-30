--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package common_types is

type row_mem is array (15 downto 0) of std_logic_vector(7 downto 0);
type matrix is array (15 downto 0) of row_mem ;

end common_types;

