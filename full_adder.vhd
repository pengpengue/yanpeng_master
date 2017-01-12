--!
--! Copyright (C) 2016 Microelectronic Systems Design Research Group
--!
--! @file
--! @brief  A simple full_adder
--! @author Stefan Weithoffer
--! @date   2016/08
--!
 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;

entity full_adder is 
port
(
	a    : in std_logic;
	b    : in std_logic;
	c_in : in std_logic;
	
	s     : out std_logic;
	c_out : out std_logic
);
end entity full_adder;

architecture rtl of full_adder is

begin

	pr_calc: process(a,b,c_in) is
	begin
		s <= a xor b xor c_in;
		c_out <= (a and b) or (c_in and (a xor b));
	end process pr_calc;

end architecture rtl;
