# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\workspace\PLL_ADC_Capture\3_ADC_Capture_ETH\vitis_prj\Hello_world_system\_ide\scripts\systemdebugger_hello_world_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\workspace\PLL_ADC_Capture\3_ADC_Capture_ETH\vitis_prj\Hello_world_system\_ide\scripts\systemdebugger_hello_world_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210249856769" && level==0 && jtag_device_ctx=="jsn-JTAG-HS1-210249856769-0373b093-0"}
fpga -file D:/workspace/PLL_ADC_Capture/3_ADC_Capture_ETH/vitis_prj/Hello_world/_ide/bitstream/ADC_Capture_ETH_top.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/workspace/PLL_ADC_Capture/3_ADC_Capture_ETH/vitis_prj/ADC_Capture_ETH_top/export/ADC_Capture_ETH_top/hw/ADC_Capture_ETH_top.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/workspace/PLL_ADC_Capture/3_ADC_Capture_ETH/vitis_prj/Hello_world/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/workspace/PLL_ADC_Capture/3_ADC_Capture_ETH/vitis_prj/Hello_world/Debug/Hello_world.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
