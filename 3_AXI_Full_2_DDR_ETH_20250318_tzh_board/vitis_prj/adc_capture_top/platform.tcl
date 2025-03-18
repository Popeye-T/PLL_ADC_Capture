# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\tzh\Desktop\AXI_Full_2_DDR_ETH_20250317_tzh_board\vitis_prj\adc_capture_top\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\tzh\Desktop\AXI_Full_2_DDR_ETH_20250317_tzh_board\vitis_prj\adc_capture_top\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {adc_capture_top}\
-hw {C:\Users\tzh\Desktop\AXI_Full_2_DDR_ETH_20250317_tzh_board\adc_capture_top.xsa}\
-out {C:/Users/tzh/Desktop/AXI_Full_2_DDR_ETH_20250317_tzh_board/vitis_prj}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {lwip_echo_server}
platform generate -domains 
platform active {adc_capture_top}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
