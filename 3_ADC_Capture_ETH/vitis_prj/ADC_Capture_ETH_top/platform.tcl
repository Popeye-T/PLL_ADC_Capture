# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\workspace\PLL_ADC_Capture\3_ADC_Capture_ETH\vitis_prj\ADC_Capture_ETH_top\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\workspace\PLL_ADC_Capture\3_ADC_Capture_ETH\vitis_prj\ADC_Capture_ETH_top\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ADC_Capture_ETH_top}\
-hw {D:\workspace\PLL_ADC_Capture\3_ADC_Capture_ETH\ADC_Capture_ETH_top.xsa}\
-out {D:/workspace/PLL_ADC_Capture/3_ADC_Capture_ETH/vitis_prj}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {ADC_Capture_ETH_top}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform config -updatehw {D:/workspace/PLL_ADC_Capture/3_ADC_Capture_ETH/ADC_Capture_ETH_top.xsa}
platform generate -domains 
platform active {ADC_Capture_ETH_top}
platform config -updatehw {D:/workspace/PLL_ADC_Capture/3_ADC_Capture_ETH/ADC_Capture_ETH_top.xsa}
platform generate -domains 
platform config -updatehw {D:/workspace/PLL_ADC_Capture/3_ADC_Capture_ETH/ADC_Capture_ETH_top.xsa}
platform generate -domains 
platform config -updatehw {D:/workspace/PLL_ADC_Capture/3_ADC_Capture_ETH/ADC_Capture_ETH_top.xsa}
platform generate -domains 
platform config -updatehw {D:/workspace/PLL_ADC_Capture/3_ADC_Capture_ETH/ADC_Capture_ETH_top.xsa}
platform config -updatehw {D:/workspace/PLL_ADC_Capture/3_ADC_Capture_ETH/ADC_Capture_ETH_top.xsa}
platform generate -domains 
platform config -updatehw {D:/workspace/PLL_ADC_Capture/3_ADC_Capture_ETH/ADC_Capture_ETH_top.xsa}
platform generate -domains 
platform config -updatehw {D:/workspace/PLL_ADC_Capture/3_ADC_Capture_ETH/ADC_Capture_ETH_top.xsa}
platform generate -domains 
platform config -updatehw {D:/workspace/PLL_ADC_Capture/3_ADC_Capture_ETH/ADC_Capture_ETH_top.xsa}
platform generate -domains 
platform active {ADC_Capture_ETH_top}
platform config -updatehw {D:/workspace/PLL_ADC_Capture/3_ADC_Capture_ETH/ADC_Capture_ETH_top.xsa}
platform generate -domains 
platform config -updatehw {D:/workspace/PLL_ADC_Capture/3_ADC_Capture_ETH/ADC_Capture_ETH_top.xsa}
platform generate -domains 
platform config -updatehw {D:/workspace/PLL_ADC_Capture/3_ADC_Capture_ETH/ADC_Capture_ETH_top.xsa}
platform generate -domains 
platform config -updatehw {D:/workspace/PLL_ADC_Capture/3_ADC_Capture_ETH/ADC_Capture_ETH_top.xsa}
platform generate -domains 
platform config -updatehw {D:/workspace/PLL_ADC_Capture/3_ADC_Capture_ETH/ADC_Capture_ETH_top.xsa}
platform generate -domains 
