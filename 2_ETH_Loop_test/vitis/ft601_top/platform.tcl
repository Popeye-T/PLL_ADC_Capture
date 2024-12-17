# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\tzh\Desktop\Zhoushan_ETH\vitis\ft601_top\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\tzh\Desktop\Zhoushan_ETH\vitis\ft601_top\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ft601_top}\
-hw {C:\Users\tzh\Desktop\Zhoushan_ETH\ft601_top.xsa}\
-out {C:/Users/tzh/Desktop/Zhoushan_ETH/vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {lwip_echo_server}
platform generate -domains 
platform active {ft601_top}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform generate -domains standalone_ps7_cortexa9_0 
