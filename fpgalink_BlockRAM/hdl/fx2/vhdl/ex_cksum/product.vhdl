----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:54:46 04/20/2017 
-- Design Name: 
-- Module Name:    product - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.ALL;
use work.common_types.all ;

 
--use work.common_types.all ;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity product is
    port(
        bval :in std_logic_vector(7 downto 0);
        target :in std_logic_vector(7 downto 0);
        trigger :in std_logic;
        load :in std_logic_vector(7 downto 0)  ;
        result :out std_logic_vector(7 downto 0)
        );
    end product;

architecture behav of product is
    --type row_mem is array (15 downto 0) of std_logic_vector(7 downto 0);
    signal memory :row_mem ;
    signal r:std_logic_vector(15 downto 0);
begin
    process( trigger, load)
	 variable r:std_logic_vector(15 downto 0) ;
    begin
    if (load =x"01" and trigger ='1') then
        memory(conv_integer(target)) <= bval ;

--elseif (trigger ='00000001' and load="0") then
--r <= valueb(0)*memory(0) +valueb(1)*memory(1) + valueb(2)*memory(2) + valueb(3)*memory(3) ;
--result <= r(7 downto 0) ;

    elsif (trigger ='1' and load=x"00") then
	 r := memory(conv_integer(target)) * bval;
        result <= r(7 downto 0) ;
    end if;
end process;
end behav;

