set_property IOSTANDARD LVCMOS18 [get_ports clk]
set_property IOSTANDARD LVCMOS18 [get_ports reset]

set_property IOSTANDARD LVCMOS18 [get_ports q[3]]
set_property IOSTANDARD LVCMOS18 [get_ports q[2]]
set_property IOSTANDARD LVCMOS18 [get_ports q[1]]
set_property IOSTANDARD LVCMOS18 [get_ports q[0]]


set_property PACKAGE_PIN J4 [get_ports clk]
set_property PACKAGE_PIN L3 [get_ports reset]

set_property PACKAGE_PIN F15 [get_ports q[3]]
set_property PACKAGE_PIN F13 [get_ports q[2]]
set_property PACKAGE_PIN F14 [get_ports q[1]]
set_property PACKAGE_PIN F16 [get_ports q[0]]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {clk_IBUF}]