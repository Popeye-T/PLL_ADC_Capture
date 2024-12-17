# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\tzh\Desktop\Zhoushan_ETH\vitis\app_system\_ide\scripts\systemdebugger_app_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\tzh\Desktop\Zhoushan_ETH\vitis\app_system\_ide\scripts\systemdebugger_app_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210249856769" && level==0 && jtag_device_ctx=="jsn-JTAG-HS1-210249856769-0373b093-0"}
fpga -file C:/Users/tzh/Desktop/Zhoushan_ETH/vitis/app/_ide/bitstream/ft601_top.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/tzh/Desktop/Zhoushan_ETH/vitis/ft601_top/export/ft601_top/hw/ft601_top.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/tzh/Desktop/Zhoushan_ETH/vitis/app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/tzh/Desktop/Zhoushan_ETH/vitis/app/Debug/app.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
