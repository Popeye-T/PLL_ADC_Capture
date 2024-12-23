# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\workspace\ADC_Cap\3_AXI_Full_2_DDR_ETH\vitis\system_wrapper_1\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\workspace\ADC_Cap\3_AXI_Full_2_DDR_ETH\vitis\system_wrapper_1\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {system_wrapper_1}\
-hw {D:\workspace\ADC_Cap\3_AXI_Full_2_DDR_ETH\system_wrapper.xsa}\
-out {D:/workspace/ADC_Cap/3_AXI_Full_2_DDR_ETH/vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {lwip_echo_server}
platform generate -domains 
platform active {system_wrapper_1}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
