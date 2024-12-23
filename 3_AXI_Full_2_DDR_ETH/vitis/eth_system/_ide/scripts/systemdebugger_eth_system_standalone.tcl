# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\workspace\ADC_Cap\3_AXI_Full_2_DDR_ETH\vitis\eth_system\_ide\scripts\systemdebugger_eth_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\workspace\ADC_Cap\3_AXI_Full_2_DDR_ETH\vitis\eth_system\_ide\scripts\systemdebugger_eth_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210249856769" && level==0 && jtag_device_ctx=="jsn-JTAG-HS1-210249856769-0373b093-0"}
fpga -file D:/workspace/ADC_Cap/3_AXI_Full_2_DDR_ETH/vitis/eth/_ide/bitstream/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/workspace/ADC_Cap/3_AXI_Full_2_DDR_ETH/vitis/system_wrapper_1/export/system_wrapper_1/hw/system_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/workspace/ADC_Cap/3_AXI_Full_2_DDR_ETH/vitis/eth/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/workspace/ADC_Cap/3_AXI_Full_2_DDR_ETH/vitis/eth/Debug/eth.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
