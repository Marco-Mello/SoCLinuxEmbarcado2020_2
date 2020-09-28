# ------------------------------------------------------------------------------
# Top Level Simulation Script to source msim_setup.tcl
# ------------------------------------------------------------------------------
set QSYS_SIMDIR obj/default/runtime/sim
source msim_setup.tcl
# Copy generated memory initialization hex and dat file(s) to current directory
file copy -force /home/labarqcomp/SoCLinuxEmbarcado2020_2/Entrega_3_FPGA_IP/software/AgoraVai/mem_init/hdl_sim/MotorPasso_onchip_memory2_0.dat ./ 
file copy -force /home/labarqcomp/SoCLinuxEmbarcado2020_2/Entrega_3_FPGA_IP/software/AgoraVai/mem_init/hdl_sim/MotorPasso_onchip_memory2_1.dat ./ 
file copy -force /home/labarqcomp/SoCLinuxEmbarcado2020_2/Entrega_3_FPGA_IP/software/AgoraVai/mem_init/MotorPasso_onchip_memory2_0.hex ./ 
file copy -force /home/labarqcomp/SoCLinuxEmbarcado2020_2/Entrega_3_FPGA_IP/software/AgoraVai/mem_init/MotorPasso_onchip_memory2_1.hex ./ 
