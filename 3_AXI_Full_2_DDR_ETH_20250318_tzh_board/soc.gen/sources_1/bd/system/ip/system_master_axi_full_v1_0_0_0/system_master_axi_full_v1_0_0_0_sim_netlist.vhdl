-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Mar 18 00:01:22 2025
-- Host        : popeye running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Administrator/Desktop/AXI_Full_2_DDR_ETH_20250317_tzh_sim/soc.gen/sources_1/bd/system/ip/system_master_axi_full_v1_0_0_0/system_master_axi_full_v1_0_0_0_sim_netlist.vhdl
-- Design      : system_master_axi_full_v1_0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_master_axi_full_v1_0_0_0_master_axi_full_v1_0 is
  port (
    axi_rready_reg_0 : out STD_LOGIC;
    axi_arvalid_reg_0 : out STD_LOGIC;
    axi_awvalid_reg_0 : out STD_LOGIC;
    data_ready_trans : out STD_LOGIC;
    axi_wvalid_reg_0 : out STD_LOGIC;
    axi_wlast_reg_0 : out STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    state_write_busy : out STD_LOGIC;
    state_read_busy : out STD_LOGIC;
    state_wait : out STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 20 downto 0 );
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 20 downto 0 );
    write_done_flag : out STD_LOGIC;
    M_AXI_ARESETN : in STD_LOGIC;
    M_AXI_RLAST : in STD_LOGIC;
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_ACLK : in STD_LOGIC;
    data_trans_signal : in STD_LOGIC;
    data_trans : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_BVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_master_axi_full_v1_0_0_0_master_axi_full_v1_0 : entity is "master_axi_full_v1_0";
end system_master_axi_full_v1_0_0_0_master_axi_full_v1_0;

architecture STRUCTURE of system_master_axi_full_v1_0_0_0_master_axi_full_v1_0 is
  signal \FSM_onehot_mst_exec_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_mst_exec_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_mst_exec_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal M_AXI_ARADDR_carry_i_1_n_0 : STD_LOGIC;
  signal M_AXI_ARADDR_carry_n_0 : STD_LOGIC;
  signal M_AXI_ARADDR_carry_n_1 : STD_LOGIC;
  signal M_AXI_ARADDR_carry_n_2 : STD_LOGIC;
  signal M_AXI_ARADDR_carry_n_3 : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal M_AXI_AWADDR_carry_i_1_n_0 : STD_LOGIC;
  signal M_AXI_AWADDR_carry_n_0 : STD_LOGIC;
  signal M_AXI_AWADDR_carry_n_1 : STD_LOGIC;
  signal M_AXI_AWADDR_carry_n_2 : STD_LOGIC;
  signal M_AXI_AWADDR_carry_n_3 : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \axi_araddr[14]_i_2_n_0\ : STD_LOGIC;
  signal axi_araddr_reg : STD_LOGIC_VECTOR ( 31 downto 27 );
  signal \axi_araddr_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[14]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[14]_i_1_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[14]_i_1_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[14]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[14]_i_1_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[18]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[18]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[18]_i_1_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[18]_i_1_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[18]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[18]_i_1_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[22]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[22]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[22]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[22]_i_1_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[22]_i_1_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[22]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[22]_i_1_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[26]_i_2_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[26]_i_2_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[26]_i_2_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[26]_i_2_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[26]_i_2_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[26]_i_2_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[26]_i_2_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal axi_arvalid0 : STD_LOGIC;
  signal axi_arvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_arvalid_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[14]_i_2_n_0\ : STD_LOGIC;
  signal axi_awaddr_reg : STD_LOGIC_VECTOR ( 31 downto 27 );
  signal \axi_awaddr_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[14]_i_1_n_1\ : STD_LOGIC;
  signal \axi_awaddr_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \axi_awaddr_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \axi_awaddr_reg[14]_i_1_n_4\ : STD_LOGIC;
  signal \axi_awaddr_reg[14]_i_1_n_5\ : STD_LOGIC;
  signal \axi_awaddr_reg[14]_i_1_n_6\ : STD_LOGIC;
  signal \axi_awaddr_reg[14]_i_1_n_7\ : STD_LOGIC;
  signal \axi_awaddr_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[18]_i_1_n_1\ : STD_LOGIC;
  signal \axi_awaddr_reg[18]_i_1_n_2\ : STD_LOGIC;
  signal \axi_awaddr_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \axi_awaddr_reg[18]_i_1_n_4\ : STD_LOGIC;
  signal \axi_awaddr_reg[18]_i_1_n_5\ : STD_LOGIC;
  signal \axi_awaddr_reg[18]_i_1_n_6\ : STD_LOGIC;
  signal \axi_awaddr_reg[18]_i_1_n_7\ : STD_LOGIC;
  signal \axi_awaddr_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[22]_i_1_n_1\ : STD_LOGIC;
  signal \axi_awaddr_reg[22]_i_1_n_2\ : STD_LOGIC;
  signal \axi_awaddr_reg[22]_i_1_n_3\ : STD_LOGIC;
  signal \axi_awaddr_reg[22]_i_1_n_4\ : STD_LOGIC;
  signal \axi_awaddr_reg[22]_i_1_n_5\ : STD_LOGIC;
  signal \axi_awaddr_reg[22]_i_1_n_6\ : STD_LOGIC;
  signal \axi_awaddr_reg[22]_i_1_n_7\ : STD_LOGIC;
  signal \axi_awaddr_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[26]_i_2_n_1\ : STD_LOGIC;
  signal \axi_awaddr_reg[26]_i_2_n_2\ : STD_LOGIC;
  signal \axi_awaddr_reg[26]_i_2_n_3\ : STD_LOGIC;
  signal \axi_awaddr_reg[26]_i_2_n_4\ : STD_LOGIC;
  signal \axi_awaddr_reg[26]_i_2_n_5\ : STD_LOGIC;
  signal \axi_awaddr_reg[26]_i_2_n_6\ : STD_LOGIC;
  signal \axi_awaddr_reg[26]_i_2_n_7\ : STD_LOGIC;
  signal \axi_awaddr_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \axi_awaddr_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \axi_awaddr_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \axi_awaddr_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \axi_awaddr_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \axi_awaddr_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \axi_awaddr_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \axi_awaddr_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal axi_awvalid0 : STD_LOGIC;
  signal axi_awvalid09_out : STD_LOGIC;
  signal axi_awvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_awvalid_reg_0\ : STD_LOGIC;
  signal axi_bready0 : STD_LOGIC;
  signal axi_rready_i_1_n_0 : STD_LOGIC;
  signal \^axi_rready_reg_0\ : STD_LOGIC;
  signal \axi_wdata[127]_i_1_n_0\ : STD_LOGIC;
  signal axi_wlast0 : STD_LOGIC;
  signal axi_wlast_i_1_n_0 : STD_LOGIC;
  signal axi_wlast_i_3_n_0 : STD_LOGIC;
  signal \^axi_wlast_reg_0\ : STD_LOGIC;
  signal axi_wvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_wvalid_reg_0\ : STD_LOGIC;
  signal burst_read_active : STD_LOGIC;
  signal burst_read_active_i_1_n_0 : STD_LOGIC;
  signal burst_write_active : STD_LOGIC;
  signal burst_write_active_i_1_n_0 : STD_LOGIC;
  signal data_trans_signal_d1 : STD_LOGIC;
  signal data_trans_signal_d2 : STD_LOGIC;
  signal mst_exec_state : STD_LOGIC;
  signal \mst_exec_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal read_burst_counter : STD_LOGIC;
  signal \read_burst_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[10]_i_4_n_0\ : STD_LOGIC;
  signal \read_burst_counter[10]_i_5_n_0\ : STD_LOGIC;
  signal \read_burst_counter[10]_i_6_n_0\ : STD_LOGIC;
  signal \read_burst_counter[10]_i_7_n_0\ : STD_LOGIC;
  signal \read_burst_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal read_burst_counter_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal read_index0 : STD_LOGIC;
  signal \read_index[3]_i_1_n_0\ : STD_LOGIC;
  signal \read_index[7]_i_1_n_0\ : STD_LOGIC;
  signal \read_index[7]_i_4_n_0\ : STD_LOGIC;
  signal \read_index[7]_i_5_n_0\ : STD_LOGIC;
  signal \read_index[7]_i_6_n_0\ : STD_LOGIC;
  signal read_index_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reads_done : STD_LOGIC;
  signal reads_done1 : STD_LOGIC;
  signal reads_done_i_1_n_0 : STD_LOGIC;
  signal reads_done_i_3_n_0 : STD_LOGIC;
  signal reads_done_i_4_n_0 : STD_LOGIC;
  signal start_single_burst_read_i_1_n_0 : STD_LOGIC;
  signal start_single_burst_read_reg_n_0 : STD_LOGIC;
  signal start_single_burst_write_i_1_n_0 : STD_LOGIC;
  signal start_single_burst_write_reg_n_0 : STD_LOGIC;
  signal state_write_busy_i_1_n_0 : STD_LOGIC;
  signal write_burst_counter : STD_LOGIC;
  signal \write_burst_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_burst_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \write_burst_counter[10]_i_4_n_0\ : STD_LOGIC;
  signal \write_burst_counter[6]_i_2_n_0\ : STD_LOGIC;
  signal write_burst_counter_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^write_done_flag\ : STD_LOGIC;
  signal write_done_flag_i_2_n_0 : STD_LOGIC;
  signal write_done_flag_i_3_n_0 : STD_LOGIC;
  signal write_done_flag_i_4_n_0 : STD_LOGIC;
  signal write_index0 : STD_LOGIC;
  signal \write_index[7]_i_1_n_0\ : STD_LOGIC;
  signal \write_index[7]_i_4_n_0\ : STD_LOGIC;
  signal \write_index[7]_i_5_n_0\ : STD_LOGIC;
  signal write_index_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal writes_done : STD_LOGIC;
  signal writes_done_i_1_n_0 : STD_LOGIC;
  signal \NLW_M_AXI_ARADDR_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_M_AXI_ARADDR_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_M_AXI_AWADDR_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_M_AXI_AWADDR_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_axi_araddr_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axi_araddr_reg[31]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_axi_awaddr_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axi_awaddr_reg[31]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_mst_exec_state_reg[0]\ : label is "INIT_WAIT:1000,INIT_WRITE:010,INIT_READ:100,IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_mst_exec_state_reg[1]\ : label is "INIT_WAIT:1000,INIT_WRITE:010,INIT_READ:100,IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_mst_exec_state_reg[2]\ : label is "INIT_WAIT:1000,INIT_WRITE:010,INIT_READ:100,IDLE:001";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of M_AXI_ARADDR_carry : label is 35;
  attribute ADDER_THRESHOLD of \M_AXI_ARADDR_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of M_AXI_AWADDR_carry : label is 35;
  attribute ADDER_THRESHOLD of \M_AXI_AWADDR_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \axi_araddr_reg[14]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \axi_araddr_reg[18]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \axi_araddr_reg[22]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \axi_araddr_reg[26]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \axi_araddr_reg[27]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \axi_araddr_reg[31]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arvalid_i_1 : label is "soft_lutpair15";
  attribute ADDER_THRESHOLD of \axi_awaddr_reg[14]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \axi_awaddr_reg[18]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \axi_awaddr_reg[22]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \axi_awaddr_reg[26]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \axi_awaddr_reg[27]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \axi_awaddr_reg[31]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of axi_bready_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of axi_wlast_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_wvalid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of burst_read_active_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of burst_write_active_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of data_ready_trans_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \read_burst_counter[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \read_burst_counter[10]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \read_burst_counter[10]_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \read_burst_counter[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \read_burst_counter[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \read_burst_counter[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \read_burst_counter[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \read_burst_counter[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_burst_counter[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \read_burst_counter[9]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \read_index[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \read_index[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \read_index[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \read_index[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_index[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_index[7]_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \read_index[7]_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of reads_done_i_4 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \write_burst_counter[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \write_burst_counter[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \write_burst_counter[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \write_burst_counter[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_burst_counter[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_burst_counter[6]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \write_burst_counter[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_burst_counter[9]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_index[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \write_index[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \write_index[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_index[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \write_index[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_index[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \write_index[7]_i_3\ : label is "soft_lutpair11";
begin
  M_AXI_ARADDR(20 downto 0) <= \^m_axi_araddr\(20 downto 0);
  M_AXI_AWADDR(20 downto 0) <= \^m_axi_awaddr\(20 downto 0);
  M_AXI_BREADY <= \^m_axi_bready\;
  axi_arvalid_reg_0 <= \^axi_arvalid_reg_0\;
  axi_awvalid_reg_0 <= \^axi_awvalid_reg_0\;
  axi_rready_reg_0 <= \^axi_rready_reg_0\;
  axi_wlast_reg_0 <= \^axi_wlast_reg_0\;
  axi_wvalid_reg_0 <= \^axi_wvalid_reg_0\;
  write_done_flag <= \^write_done_flag\;
\FSM_onehot_mst_exec_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F888F8F8"
    )
        port map (
      I0 => reads_done,
      I1 => \FSM_onehot_mst_exec_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_mst_exec_state_reg_n_0_[0]\,
      I3 => data_trans_signal_d2,
      I4 => data_trans_signal_d1,
      O => \mst_exec_state__0\(0)
    );
\FSM_onehot_mst_exec_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4040"
    )
        port map (
      I0 => data_trans_signal_d2,
      I1 => data_trans_signal_d1,
      I2 => \FSM_onehot_mst_exec_state_reg_n_0_[0]\,
      I3 => writes_done,
      I4 => \FSM_onehot_mst_exec_state_reg_n_0_[1]\,
      O => \mst_exec_state__0\(1)
    );
\FSM_onehot_mst_exec_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => reads_done,
      I1 => \FSM_onehot_mst_exec_state_reg_n_0_[2]\,
      I2 => writes_done,
      I3 => \FSM_onehot_mst_exec_state_reg_n_0_[1]\,
      O => \mst_exec_state__0\(2)
    );
\FSM_onehot_mst_exec_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => M_AXI_ACLK,
      CE => mst_exec_state,
      D => \mst_exec_state__0\(0),
      Q => \FSM_onehot_mst_exec_state_reg_n_0_[0]\,
      S => state_write_busy_i_1_n_0
    );
\FSM_onehot_mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => mst_exec_state,
      D => \mst_exec_state__0\(1),
      Q => \FSM_onehot_mst_exec_state_reg_n_0_[1]\,
      R => state_write_busy_i_1_n_0
    );
\FSM_onehot_mst_exec_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => mst_exec_state,
      D => \mst_exec_state__0\(2),
      Q => \FSM_onehot_mst_exec_state_reg_n_0_[2]\,
      R => state_write_busy_i_1_n_0
    );
M_AXI_ARADDR_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => M_AXI_ARADDR_carry_n_0,
      CO(2) => M_AXI_ARADDR_carry_n_1,
      CO(1) => M_AXI_ARADDR_carry_n_2,
      CO(0) => M_AXI_ARADDR_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => axi_araddr_reg(28),
      DI(0) => '0',
      O(3 downto 0) => \^m_axi_araddr\(19 downto 16),
      S(3 downto 2) => axi_araddr_reg(30 downto 29),
      S(1) => M_AXI_ARADDR_carry_i_1_n_0,
      S(0) => axi_araddr_reg(27)
    );
\M_AXI_ARADDR_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => M_AXI_ARADDR_carry_n_0,
      CO(3 downto 0) => \NLW_M_AXI_ARADDR_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_M_AXI_ARADDR_carry__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \^m_axi_araddr\(20),
      S(3 downto 1) => B"000",
      S(0) => axi_araddr_reg(31)
    );
M_AXI_ARADDR_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_araddr_reg(28),
      O => M_AXI_ARADDR_carry_i_1_n_0
    );
M_AXI_AWADDR_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => M_AXI_AWADDR_carry_n_0,
      CO(2) => M_AXI_AWADDR_carry_n_1,
      CO(1) => M_AXI_AWADDR_carry_n_2,
      CO(0) => M_AXI_AWADDR_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => axi_awaddr_reg(28),
      DI(0) => '0',
      O(3 downto 0) => \^m_axi_awaddr\(19 downto 16),
      S(3 downto 2) => axi_awaddr_reg(30 downto 29),
      S(1) => M_AXI_AWADDR_carry_i_1_n_0,
      S(0) => axi_awaddr_reg(27)
    );
\M_AXI_AWADDR_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => M_AXI_AWADDR_carry_n_0,
      CO(3 downto 0) => \NLW_M_AXI_AWADDR_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_M_AXI_AWADDR_carry__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \^m_axi_awaddr\(20),
      S(3 downto 1) => B"000",
      S(0) => axi_awaddr_reg(31)
    );
M_AXI_AWADDR_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_awaddr_reg(28),
      O => M_AXI_AWADDR_carry_i_1_n_0
    );
\axi_araddr[14]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_axi_araddr\(0),
      O => \axi_araddr[14]_i_2_n_0\
    );
\axi_araddr[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^axi_arvalid_reg_0\,
      I1 => M_AXI_ARREADY,
      O => axi_arvalid0
    );
\axi_araddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[14]_i_1_n_7\,
      Q => \^m_axi_araddr\(0),
      R => axi_awvalid0
    );
\axi_araddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[14]_i_1_n_6\,
      Q => \^m_axi_araddr\(1),
      R => axi_awvalid0
    );
\axi_araddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[14]_i_1_n_5\,
      Q => \^m_axi_araddr\(2),
      R => axi_awvalid0
    );
\axi_araddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[14]_i_1_n_4\,
      Q => \^m_axi_araddr\(3),
      R => axi_awvalid0
    );
\axi_araddr_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axi_araddr_reg[14]_i_1_n_0\,
      CO(2) => \axi_araddr_reg[14]_i_1_n_1\,
      CO(1) => \axi_araddr_reg[14]_i_1_n_2\,
      CO(0) => \axi_araddr_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \axi_araddr_reg[14]_i_1_n_4\,
      O(2) => \axi_araddr_reg[14]_i_1_n_5\,
      O(1) => \axi_araddr_reg[14]_i_1_n_6\,
      O(0) => \axi_araddr_reg[14]_i_1_n_7\,
      S(3 downto 1) => \^m_axi_araddr\(3 downto 1),
      S(0) => \axi_araddr[14]_i_2_n_0\
    );
\axi_araddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[18]_i_1_n_7\,
      Q => \^m_axi_araddr\(4),
      R => axi_awvalid0
    );
\axi_araddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[18]_i_1_n_6\,
      Q => \^m_axi_araddr\(5),
      R => axi_awvalid0
    );
\axi_araddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[18]_i_1_n_5\,
      Q => \^m_axi_araddr\(6),
      R => axi_awvalid0
    );
\axi_araddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[18]_i_1_n_4\,
      Q => \^m_axi_araddr\(7),
      R => axi_awvalid0
    );
\axi_araddr_reg[18]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_reg[14]_i_1_n_0\,
      CO(3) => \axi_araddr_reg[18]_i_1_n_0\,
      CO(2) => \axi_araddr_reg[18]_i_1_n_1\,
      CO(1) => \axi_araddr_reg[18]_i_1_n_2\,
      CO(0) => \axi_araddr_reg[18]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_araddr_reg[18]_i_1_n_4\,
      O(2) => \axi_araddr_reg[18]_i_1_n_5\,
      O(1) => \axi_araddr_reg[18]_i_1_n_6\,
      O(0) => \axi_araddr_reg[18]_i_1_n_7\,
      S(3 downto 0) => \^m_axi_araddr\(7 downto 4)
    );
\axi_araddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[22]_i_1_n_7\,
      Q => \^m_axi_araddr\(8),
      R => axi_awvalid0
    );
\axi_araddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[22]_i_1_n_6\,
      Q => \^m_axi_araddr\(9),
      R => axi_awvalid0
    );
\axi_araddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[22]_i_1_n_5\,
      Q => \^m_axi_araddr\(10),
      R => axi_awvalid0
    );
\axi_araddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[22]_i_1_n_4\,
      Q => \^m_axi_araddr\(11),
      R => axi_awvalid0
    );
\axi_araddr_reg[22]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_reg[18]_i_1_n_0\,
      CO(3) => \axi_araddr_reg[22]_i_1_n_0\,
      CO(2) => \axi_araddr_reg[22]_i_1_n_1\,
      CO(1) => \axi_araddr_reg[22]_i_1_n_2\,
      CO(0) => \axi_araddr_reg[22]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_araddr_reg[22]_i_1_n_4\,
      O(2) => \axi_araddr_reg[22]_i_1_n_5\,
      O(1) => \axi_araddr_reg[22]_i_1_n_6\,
      O(0) => \axi_araddr_reg[22]_i_1_n_7\,
      S(3 downto 0) => \^m_axi_araddr\(11 downto 8)
    );
\axi_araddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[26]_i_2_n_7\,
      Q => \^m_axi_araddr\(12),
      R => axi_awvalid0
    );
\axi_araddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[26]_i_2_n_6\,
      Q => \^m_axi_araddr\(13),
      R => axi_awvalid0
    );
\axi_araddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[26]_i_2_n_5\,
      Q => \^m_axi_araddr\(14),
      R => axi_awvalid0
    );
\axi_araddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[26]_i_2_n_4\,
      Q => \^m_axi_araddr\(15),
      R => axi_awvalid0
    );
\axi_araddr_reg[26]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_reg[22]_i_1_n_0\,
      CO(3) => \axi_araddr_reg[26]_i_2_n_0\,
      CO(2) => \axi_araddr_reg[26]_i_2_n_1\,
      CO(1) => \axi_araddr_reg[26]_i_2_n_2\,
      CO(0) => \axi_araddr_reg[26]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_araddr_reg[26]_i_2_n_4\,
      O(2) => \axi_araddr_reg[26]_i_2_n_5\,
      O(1) => \axi_araddr_reg[26]_i_2_n_6\,
      O(0) => \axi_araddr_reg[26]_i_2_n_7\,
      S(3 downto 0) => \^m_axi_araddr\(15 downto 12)
    );
\axi_araddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[27]_i_1_n_7\,
      Q => axi_araddr_reg(27),
      R => axi_awvalid0
    );
\axi_araddr_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_reg[26]_i_2_n_0\,
      CO(3) => \axi_araddr_reg[27]_i_1_n_0\,
      CO(2) => \axi_araddr_reg[27]_i_1_n_1\,
      CO(1) => \axi_araddr_reg[27]_i_1_n_2\,
      CO(0) => \axi_araddr_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_araddr_reg[27]_i_1_n_4\,
      O(2) => \axi_araddr_reg[27]_i_1_n_5\,
      O(1) => \axi_araddr_reg[27]_i_1_n_6\,
      O(0) => \axi_araddr_reg[27]_i_1_n_7\,
      S(3 downto 0) => axi_araddr_reg(30 downto 27)
    );
\axi_araddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[27]_i_1_n_6\,
      Q => axi_araddr_reg(28),
      R => axi_awvalid0
    );
\axi_araddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[27]_i_1_n_5\,
      Q => axi_araddr_reg(29),
      R => axi_awvalid0
    );
\axi_araddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[27]_i_1_n_4\,
      Q => axi_araddr_reg(30),
      R => axi_awvalid0
    );
\axi_araddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_arvalid0,
      D => \axi_araddr_reg[31]_i_1_n_7\,
      Q => axi_araddr_reg(31),
      R => axi_awvalid0
    );
\axi_araddr_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_araddr_reg[27]_i_1_n_0\,
      CO(3 downto 0) => \NLW_axi_araddr_reg[31]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_axi_araddr_reg[31]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \axi_araddr_reg[31]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => axi_araddr_reg(31)
    );
axi_arvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => start_single_burst_read_reg_n_0,
      I1 => \^axi_arvalid_reg_0\,
      I2 => M_AXI_ARREADY,
      O => axi_arvalid_i_1_n_0
    );
axi_arvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_arvalid_i_1_n_0,
      Q => \^axi_arvalid_reg_0\,
      R => axi_awvalid0
    );
\axi_awaddr[14]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_axi_awaddr\(0),
      O => \axi_awaddr[14]_i_2_n_0\
    );
\axi_awaddr[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^axi_awvalid_reg_0\,
      I1 => M_AXI_AWREADY,
      O => axi_awvalid09_out
    );
\axi_awaddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[14]_i_1_n_7\,
      Q => \^m_axi_awaddr\(0),
      R => axi_awvalid0
    );
\axi_awaddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[14]_i_1_n_6\,
      Q => \^m_axi_awaddr\(1),
      R => axi_awvalid0
    );
\axi_awaddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[14]_i_1_n_5\,
      Q => \^m_axi_awaddr\(2),
      R => axi_awvalid0
    );
\axi_awaddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[14]_i_1_n_4\,
      Q => \^m_axi_awaddr\(3),
      R => axi_awvalid0
    );
\axi_awaddr_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axi_awaddr_reg[14]_i_1_n_0\,
      CO(2) => \axi_awaddr_reg[14]_i_1_n_1\,
      CO(1) => \axi_awaddr_reg[14]_i_1_n_2\,
      CO(0) => \axi_awaddr_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \axi_awaddr_reg[14]_i_1_n_4\,
      O(2) => \axi_awaddr_reg[14]_i_1_n_5\,
      O(1) => \axi_awaddr_reg[14]_i_1_n_6\,
      O(0) => \axi_awaddr_reg[14]_i_1_n_7\,
      S(3 downto 1) => \^m_axi_awaddr\(3 downto 1),
      S(0) => \axi_awaddr[14]_i_2_n_0\
    );
\axi_awaddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[18]_i_1_n_7\,
      Q => \^m_axi_awaddr\(4),
      R => axi_awvalid0
    );
\axi_awaddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[18]_i_1_n_6\,
      Q => \^m_axi_awaddr\(5),
      R => axi_awvalid0
    );
\axi_awaddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[18]_i_1_n_5\,
      Q => \^m_axi_awaddr\(6),
      R => axi_awvalid0
    );
\axi_awaddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[18]_i_1_n_4\,
      Q => \^m_axi_awaddr\(7),
      R => axi_awvalid0
    );
\axi_awaddr_reg[18]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_awaddr_reg[14]_i_1_n_0\,
      CO(3) => \axi_awaddr_reg[18]_i_1_n_0\,
      CO(2) => \axi_awaddr_reg[18]_i_1_n_1\,
      CO(1) => \axi_awaddr_reg[18]_i_1_n_2\,
      CO(0) => \axi_awaddr_reg[18]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_awaddr_reg[18]_i_1_n_4\,
      O(2) => \axi_awaddr_reg[18]_i_1_n_5\,
      O(1) => \axi_awaddr_reg[18]_i_1_n_6\,
      O(0) => \axi_awaddr_reg[18]_i_1_n_7\,
      S(3 downto 0) => \^m_axi_awaddr\(7 downto 4)
    );
\axi_awaddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[22]_i_1_n_7\,
      Q => \^m_axi_awaddr\(8),
      R => axi_awvalid0
    );
\axi_awaddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[22]_i_1_n_6\,
      Q => \^m_axi_awaddr\(9),
      R => axi_awvalid0
    );
\axi_awaddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[22]_i_1_n_5\,
      Q => \^m_axi_awaddr\(10),
      R => axi_awvalid0
    );
\axi_awaddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[22]_i_1_n_4\,
      Q => \^m_axi_awaddr\(11),
      R => axi_awvalid0
    );
\axi_awaddr_reg[22]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_awaddr_reg[18]_i_1_n_0\,
      CO(3) => \axi_awaddr_reg[22]_i_1_n_0\,
      CO(2) => \axi_awaddr_reg[22]_i_1_n_1\,
      CO(1) => \axi_awaddr_reg[22]_i_1_n_2\,
      CO(0) => \axi_awaddr_reg[22]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_awaddr_reg[22]_i_1_n_4\,
      O(2) => \axi_awaddr_reg[22]_i_1_n_5\,
      O(1) => \axi_awaddr_reg[22]_i_1_n_6\,
      O(0) => \axi_awaddr_reg[22]_i_1_n_7\,
      S(3 downto 0) => \^m_axi_awaddr\(11 downto 8)
    );
\axi_awaddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[26]_i_2_n_7\,
      Q => \^m_axi_awaddr\(12),
      R => axi_awvalid0
    );
\axi_awaddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[26]_i_2_n_6\,
      Q => \^m_axi_awaddr\(13),
      R => axi_awvalid0
    );
\axi_awaddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[26]_i_2_n_5\,
      Q => \^m_axi_awaddr\(14),
      R => axi_awvalid0
    );
\axi_awaddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[26]_i_2_n_4\,
      Q => \^m_axi_awaddr\(15),
      R => axi_awvalid0
    );
\axi_awaddr_reg[26]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_awaddr_reg[22]_i_1_n_0\,
      CO(3) => \axi_awaddr_reg[26]_i_2_n_0\,
      CO(2) => \axi_awaddr_reg[26]_i_2_n_1\,
      CO(1) => \axi_awaddr_reg[26]_i_2_n_2\,
      CO(0) => \axi_awaddr_reg[26]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_awaddr_reg[26]_i_2_n_4\,
      O(2) => \axi_awaddr_reg[26]_i_2_n_5\,
      O(1) => \axi_awaddr_reg[26]_i_2_n_6\,
      O(0) => \axi_awaddr_reg[26]_i_2_n_7\,
      S(3 downto 0) => \^m_axi_awaddr\(15 downto 12)
    );
\axi_awaddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[27]_i_1_n_7\,
      Q => axi_awaddr_reg(27),
      R => axi_awvalid0
    );
\axi_awaddr_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_awaddr_reg[26]_i_2_n_0\,
      CO(3) => \axi_awaddr_reg[27]_i_1_n_0\,
      CO(2) => \axi_awaddr_reg[27]_i_1_n_1\,
      CO(1) => \axi_awaddr_reg[27]_i_1_n_2\,
      CO(0) => \axi_awaddr_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_awaddr_reg[27]_i_1_n_4\,
      O(2) => \axi_awaddr_reg[27]_i_1_n_5\,
      O(1) => \axi_awaddr_reg[27]_i_1_n_6\,
      O(0) => \axi_awaddr_reg[27]_i_1_n_7\,
      S(3 downto 0) => axi_awaddr_reg(30 downto 27)
    );
\axi_awaddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[27]_i_1_n_6\,
      Q => axi_awaddr_reg(28),
      R => axi_awvalid0
    );
\axi_awaddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[27]_i_1_n_5\,
      Q => axi_awaddr_reg(29),
      R => axi_awvalid0
    );
\axi_awaddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[27]_i_1_n_4\,
      Q => axi_awaddr_reg(30),
      R => axi_awvalid0
    );
\axi_awaddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_awvalid09_out,
      D => \axi_awaddr_reg[31]_i_1_n_7\,
      Q => axi_awaddr_reg(31),
      R => axi_awvalid0
    );
\axi_awaddr_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_awaddr_reg[27]_i_1_n_0\,
      CO(3 downto 0) => \NLW_axi_awaddr_reg[31]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_axi_awaddr_reg[31]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \axi_awaddr_reg[31]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => axi_awaddr_reg(31)
    );
axi_awvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => start_single_burst_write_reg_n_0,
      I1 => M_AXI_AWREADY,
      I2 => \^axi_awvalid_reg_0\,
      O => axi_awvalid_i_1_n_0
    );
axi_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_awvalid_i_1_n_0,
      Q => \^axi_awvalid_reg_0\,
      R => axi_awvalid0
    );
axi_bready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => M_AXI_BVALID,
      I1 => \^m_axi_bready\,
      O => axi_bready0
    );
axi_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_bready0,
      Q => \^m_axi_bready\,
      R => axi_awvalid0
    );
axi_rready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D0D0D0D0D00000"
    )
        port map (
      I0 => data_trans_signal_d1,
      I1 => data_trans_signal_d2,
      I2 => M_AXI_ARESETN,
      I3 => M_AXI_RLAST,
      I4 => M_AXI_RVALID,
      I5 => \^axi_rready_reg_0\,
      O => axi_rready_i_1_n_0
    );
axi_rready_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_rready_i_1_n_0,
      Q => \^axi_rready_reg_0\,
      R => '0'
    );
\axi_wdata[127]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^axi_wvalid_reg_0\,
      I1 => M_AXI_WREADY,
      I2 => M_AXI_AWREADY,
      I3 => \^axi_awvalid_reg_0\,
      O => \axi_wdata[127]_i_1_n_0\
    );
\axi_wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(0),
      Q => M_AXI_WDATA(0),
      R => axi_awvalid0
    );
\axi_wdata_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(100),
      Q => M_AXI_WDATA(100),
      R => axi_awvalid0
    );
\axi_wdata_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(101),
      Q => M_AXI_WDATA(101),
      R => axi_awvalid0
    );
\axi_wdata_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(102),
      Q => M_AXI_WDATA(102),
      R => axi_awvalid0
    );
\axi_wdata_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(103),
      Q => M_AXI_WDATA(103),
      R => axi_awvalid0
    );
\axi_wdata_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(104),
      Q => M_AXI_WDATA(104),
      R => axi_awvalid0
    );
\axi_wdata_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(105),
      Q => M_AXI_WDATA(105),
      R => axi_awvalid0
    );
\axi_wdata_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(106),
      Q => M_AXI_WDATA(106),
      R => axi_awvalid0
    );
\axi_wdata_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(107),
      Q => M_AXI_WDATA(107),
      R => axi_awvalid0
    );
\axi_wdata_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(108),
      Q => M_AXI_WDATA(108),
      R => axi_awvalid0
    );
\axi_wdata_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(109),
      Q => M_AXI_WDATA(109),
      R => axi_awvalid0
    );
\axi_wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(10),
      Q => M_AXI_WDATA(10),
      R => axi_awvalid0
    );
\axi_wdata_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(110),
      Q => M_AXI_WDATA(110),
      R => axi_awvalid0
    );
\axi_wdata_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(111),
      Q => M_AXI_WDATA(111),
      R => axi_awvalid0
    );
\axi_wdata_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(112),
      Q => M_AXI_WDATA(112),
      R => axi_awvalid0
    );
\axi_wdata_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(113),
      Q => M_AXI_WDATA(113),
      R => axi_awvalid0
    );
\axi_wdata_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(114),
      Q => M_AXI_WDATA(114),
      R => axi_awvalid0
    );
\axi_wdata_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(115),
      Q => M_AXI_WDATA(115),
      R => axi_awvalid0
    );
\axi_wdata_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(116),
      Q => M_AXI_WDATA(116),
      R => axi_awvalid0
    );
\axi_wdata_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(117),
      Q => M_AXI_WDATA(117),
      R => axi_awvalid0
    );
\axi_wdata_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(118),
      Q => M_AXI_WDATA(118),
      R => axi_awvalid0
    );
\axi_wdata_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(119),
      Q => M_AXI_WDATA(119),
      R => axi_awvalid0
    );
\axi_wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(11),
      Q => M_AXI_WDATA(11),
      R => axi_awvalid0
    );
\axi_wdata_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(120),
      Q => M_AXI_WDATA(120),
      R => axi_awvalid0
    );
\axi_wdata_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(121),
      Q => M_AXI_WDATA(121),
      R => axi_awvalid0
    );
\axi_wdata_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(122),
      Q => M_AXI_WDATA(122),
      R => axi_awvalid0
    );
\axi_wdata_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(123),
      Q => M_AXI_WDATA(123),
      R => axi_awvalid0
    );
\axi_wdata_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(124),
      Q => M_AXI_WDATA(124),
      R => axi_awvalid0
    );
\axi_wdata_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(125),
      Q => M_AXI_WDATA(125),
      R => axi_awvalid0
    );
\axi_wdata_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(126),
      Q => M_AXI_WDATA(126),
      R => axi_awvalid0
    );
\axi_wdata_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(127),
      Q => M_AXI_WDATA(127),
      R => axi_awvalid0
    );
\axi_wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(12),
      Q => M_AXI_WDATA(12),
      R => axi_awvalid0
    );
\axi_wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(13),
      Q => M_AXI_WDATA(13),
      R => axi_awvalid0
    );
\axi_wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(14),
      Q => M_AXI_WDATA(14),
      R => axi_awvalid0
    );
\axi_wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(15),
      Q => M_AXI_WDATA(15),
      R => axi_awvalid0
    );
\axi_wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(16),
      Q => M_AXI_WDATA(16),
      R => axi_awvalid0
    );
\axi_wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(17),
      Q => M_AXI_WDATA(17),
      R => axi_awvalid0
    );
\axi_wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(18),
      Q => M_AXI_WDATA(18),
      R => axi_awvalid0
    );
\axi_wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(19),
      Q => M_AXI_WDATA(19),
      R => axi_awvalid0
    );
\axi_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(1),
      Q => M_AXI_WDATA(1),
      R => axi_awvalid0
    );
\axi_wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(20),
      Q => M_AXI_WDATA(20),
      R => axi_awvalid0
    );
\axi_wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(21),
      Q => M_AXI_WDATA(21),
      R => axi_awvalid0
    );
\axi_wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(22),
      Q => M_AXI_WDATA(22),
      R => axi_awvalid0
    );
\axi_wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(23),
      Q => M_AXI_WDATA(23),
      R => axi_awvalid0
    );
\axi_wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(24),
      Q => M_AXI_WDATA(24),
      R => axi_awvalid0
    );
\axi_wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(25),
      Q => M_AXI_WDATA(25),
      R => axi_awvalid0
    );
\axi_wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(26),
      Q => M_AXI_WDATA(26),
      R => axi_awvalid0
    );
\axi_wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(27),
      Q => M_AXI_WDATA(27),
      R => axi_awvalid0
    );
\axi_wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(28),
      Q => M_AXI_WDATA(28),
      R => axi_awvalid0
    );
\axi_wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(29),
      Q => M_AXI_WDATA(29),
      R => axi_awvalid0
    );
\axi_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(2),
      Q => M_AXI_WDATA(2),
      R => axi_awvalid0
    );
\axi_wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(30),
      Q => M_AXI_WDATA(30),
      R => axi_awvalid0
    );
\axi_wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(31),
      Q => M_AXI_WDATA(31),
      R => axi_awvalid0
    );
\axi_wdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(32),
      Q => M_AXI_WDATA(32),
      R => axi_awvalid0
    );
\axi_wdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(33),
      Q => M_AXI_WDATA(33),
      R => axi_awvalid0
    );
\axi_wdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(34),
      Q => M_AXI_WDATA(34),
      R => axi_awvalid0
    );
\axi_wdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(35),
      Q => M_AXI_WDATA(35),
      R => axi_awvalid0
    );
\axi_wdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(36),
      Q => M_AXI_WDATA(36),
      R => axi_awvalid0
    );
\axi_wdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(37),
      Q => M_AXI_WDATA(37),
      R => axi_awvalid0
    );
\axi_wdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(38),
      Q => M_AXI_WDATA(38),
      R => axi_awvalid0
    );
\axi_wdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(39),
      Q => M_AXI_WDATA(39),
      R => axi_awvalid0
    );
\axi_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(3),
      Q => M_AXI_WDATA(3),
      R => axi_awvalid0
    );
\axi_wdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(40),
      Q => M_AXI_WDATA(40),
      R => axi_awvalid0
    );
\axi_wdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(41),
      Q => M_AXI_WDATA(41),
      R => axi_awvalid0
    );
\axi_wdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(42),
      Q => M_AXI_WDATA(42),
      R => axi_awvalid0
    );
\axi_wdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(43),
      Q => M_AXI_WDATA(43),
      R => axi_awvalid0
    );
\axi_wdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(44),
      Q => M_AXI_WDATA(44),
      R => axi_awvalid0
    );
\axi_wdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(45),
      Q => M_AXI_WDATA(45),
      R => axi_awvalid0
    );
\axi_wdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(46),
      Q => M_AXI_WDATA(46),
      R => axi_awvalid0
    );
\axi_wdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(47),
      Q => M_AXI_WDATA(47),
      R => axi_awvalid0
    );
\axi_wdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(48),
      Q => M_AXI_WDATA(48),
      R => axi_awvalid0
    );
\axi_wdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(49),
      Q => M_AXI_WDATA(49),
      R => axi_awvalid0
    );
\axi_wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(4),
      Q => M_AXI_WDATA(4),
      R => axi_awvalid0
    );
\axi_wdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(50),
      Q => M_AXI_WDATA(50),
      R => axi_awvalid0
    );
\axi_wdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(51),
      Q => M_AXI_WDATA(51),
      R => axi_awvalid0
    );
\axi_wdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(52),
      Q => M_AXI_WDATA(52),
      R => axi_awvalid0
    );
\axi_wdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(53),
      Q => M_AXI_WDATA(53),
      R => axi_awvalid0
    );
\axi_wdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(54),
      Q => M_AXI_WDATA(54),
      R => axi_awvalid0
    );
\axi_wdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(55),
      Q => M_AXI_WDATA(55),
      R => axi_awvalid0
    );
\axi_wdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(56),
      Q => M_AXI_WDATA(56),
      R => axi_awvalid0
    );
\axi_wdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(57),
      Q => M_AXI_WDATA(57),
      R => axi_awvalid0
    );
\axi_wdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(58),
      Q => M_AXI_WDATA(58),
      R => axi_awvalid0
    );
\axi_wdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(59),
      Q => M_AXI_WDATA(59),
      R => axi_awvalid0
    );
\axi_wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(5),
      Q => M_AXI_WDATA(5),
      R => axi_awvalid0
    );
\axi_wdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(60),
      Q => M_AXI_WDATA(60),
      R => axi_awvalid0
    );
\axi_wdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(61),
      Q => M_AXI_WDATA(61),
      R => axi_awvalid0
    );
\axi_wdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(62),
      Q => M_AXI_WDATA(62),
      R => axi_awvalid0
    );
\axi_wdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(63),
      Q => M_AXI_WDATA(63),
      R => axi_awvalid0
    );
\axi_wdata_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(64),
      Q => M_AXI_WDATA(64),
      R => axi_awvalid0
    );
\axi_wdata_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(65),
      Q => M_AXI_WDATA(65),
      R => axi_awvalid0
    );
\axi_wdata_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(66),
      Q => M_AXI_WDATA(66),
      R => axi_awvalid0
    );
\axi_wdata_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(67),
      Q => M_AXI_WDATA(67),
      R => axi_awvalid0
    );
\axi_wdata_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(68),
      Q => M_AXI_WDATA(68),
      R => axi_awvalid0
    );
\axi_wdata_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(69),
      Q => M_AXI_WDATA(69),
      R => axi_awvalid0
    );
\axi_wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(6),
      Q => M_AXI_WDATA(6),
      R => axi_awvalid0
    );
\axi_wdata_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(70),
      Q => M_AXI_WDATA(70),
      R => axi_awvalid0
    );
\axi_wdata_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(71),
      Q => M_AXI_WDATA(71),
      R => axi_awvalid0
    );
\axi_wdata_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(72),
      Q => M_AXI_WDATA(72),
      R => axi_awvalid0
    );
\axi_wdata_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(73),
      Q => M_AXI_WDATA(73),
      R => axi_awvalid0
    );
\axi_wdata_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(74),
      Q => M_AXI_WDATA(74),
      R => axi_awvalid0
    );
\axi_wdata_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(75),
      Q => M_AXI_WDATA(75),
      R => axi_awvalid0
    );
\axi_wdata_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(76),
      Q => M_AXI_WDATA(76),
      R => axi_awvalid0
    );
\axi_wdata_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(77),
      Q => M_AXI_WDATA(77),
      R => axi_awvalid0
    );
\axi_wdata_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(78),
      Q => M_AXI_WDATA(78),
      R => axi_awvalid0
    );
\axi_wdata_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(79),
      Q => M_AXI_WDATA(79),
      R => axi_awvalid0
    );
\axi_wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(7),
      Q => M_AXI_WDATA(7),
      R => axi_awvalid0
    );
\axi_wdata_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(80),
      Q => M_AXI_WDATA(80),
      R => axi_awvalid0
    );
\axi_wdata_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(81),
      Q => M_AXI_WDATA(81),
      R => axi_awvalid0
    );
\axi_wdata_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(82),
      Q => M_AXI_WDATA(82),
      R => axi_awvalid0
    );
\axi_wdata_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(83),
      Q => M_AXI_WDATA(83),
      R => axi_awvalid0
    );
\axi_wdata_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(84),
      Q => M_AXI_WDATA(84),
      R => axi_awvalid0
    );
\axi_wdata_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(85),
      Q => M_AXI_WDATA(85),
      R => axi_awvalid0
    );
\axi_wdata_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(86),
      Q => M_AXI_WDATA(86),
      R => axi_awvalid0
    );
\axi_wdata_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(87),
      Q => M_AXI_WDATA(87),
      R => axi_awvalid0
    );
\axi_wdata_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(88),
      Q => M_AXI_WDATA(88),
      R => axi_awvalid0
    );
\axi_wdata_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(89),
      Q => M_AXI_WDATA(89),
      R => axi_awvalid0
    );
\axi_wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(8),
      Q => M_AXI_WDATA(8),
      R => axi_awvalid0
    );
\axi_wdata_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(90),
      Q => M_AXI_WDATA(90),
      R => axi_awvalid0
    );
\axi_wdata_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(91),
      Q => M_AXI_WDATA(91),
      R => axi_awvalid0
    );
\axi_wdata_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(92),
      Q => M_AXI_WDATA(92),
      R => axi_awvalid0
    );
\axi_wdata_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(93),
      Q => M_AXI_WDATA(93),
      R => axi_awvalid0
    );
\axi_wdata_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(94),
      Q => M_AXI_WDATA(94),
      R => axi_awvalid0
    );
\axi_wdata_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(95),
      Q => M_AXI_WDATA(95),
      R => axi_awvalid0
    );
\axi_wdata_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(96),
      Q => M_AXI_WDATA(96),
      R => axi_awvalid0
    );
\axi_wdata_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(97),
      Q => M_AXI_WDATA(97),
      R => axi_awvalid0
    );
\axi_wdata_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(98),
      Q => M_AXI_WDATA(98),
      R => axi_awvalid0
    );
\axi_wdata_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(99),
      Q => M_AXI_WDATA(99),
      R => axi_awvalid0
    );
\axi_wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[127]_i_1_n_0\,
      D => data_trans(9),
      Q => M_AXI_WDATA(9),
      R => axi_awvalid0
    );
axi_wlast_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7F0"
    )
        port map (
      I0 => \^axi_wvalid_reg_0\,
      I1 => M_AXI_WREADY,
      I2 => axi_wlast0,
      I3 => \^axi_wlast_reg_0\,
      O => axi_wlast_i_1_n_0
    );
axi_wlast_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => axi_wlast_i_3_n_0,
      I1 => write_index_reg(2),
      I2 => write_index_reg(3),
      I3 => write_index_reg(1),
      I4 => write_index_reg(0),
      O => axi_wlast0
    );
axi_wlast_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => write_index_reg(4),
      I1 => write_index_reg(5),
      I2 => M_AXI_WREADY,
      I3 => \^axi_wvalid_reg_0\,
      I4 => write_index_reg(6),
      I5 => write_index_reg(7),
      O => axi_wlast_i_3_n_0
    );
axi_wlast_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_wlast_i_1_n_0,
      Q => \^axi_wlast_reg_0\,
      R => axi_awvalid0
    );
axi_wvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F707070"
    )
        port map (
      I0 => \^axi_wlast_reg_0\,
      I1 => M_AXI_WREADY,
      I2 => \^axi_wvalid_reg_0\,
      I3 => \^axi_awvalid_reg_0\,
      I4 => M_AXI_AWREADY,
      O => axi_wvalid_i_1_n_0
    );
axi_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_wvalid_i_1_n_0,
      Q => \^axi_wvalid_reg_0\,
      R => axi_awvalid0
    );
burst_read_active_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFAAAA"
    )
        port map (
      I0 => start_single_burst_read_reg_n_0,
      I1 => M_AXI_RLAST,
      I2 => M_AXI_RVALID,
      I3 => \^axi_rready_reg_0\,
      I4 => burst_read_active,
      O => burst_read_active_i_1_n_0
    );
burst_read_active_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => burst_read_active_i_1_n_0,
      Q => burst_read_active,
      R => axi_awvalid0
    );
burst_write_active_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7F0"
    )
        port map (
      I0 => M_AXI_BVALID,
      I1 => \^m_axi_bready\,
      I2 => start_single_burst_write_reg_n_0,
      I3 => burst_write_active,
      O => burst_write_active_i_1_n_0
    );
burst_write_active_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => burst_write_active_i_1_n_0,
      Q => burst_write_active,
      R => axi_awvalid0
    );
data_ready_trans_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F888"
    )
        port map (
      I0 => \^axi_wvalid_reg_0\,
      I1 => M_AXI_WREADY,
      I2 => M_AXI_AWREADY,
      I3 => \^axi_awvalid_reg_0\,
      I4 => \^axi_wlast_reg_0\,
      O => data_ready_trans
    );
data_trans_signal_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => data_trans_signal,
      Q => data_trans_signal_d1,
      R => state_write_busy_i_1_n_0
    );
data_trans_signal_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => data_trans_signal_d1,
      Q => data_trans_signal_d2,
      R => state_write_busy_i_1_n_0
    );
\read_burst_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_burst_counter_reg(0),
      O => \p_0_in__1\(0)
    );
\read_burst_counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2FFF2FFF2FFF2F"
    )
        port map (
      I0 => data_trans_signal_d1,
      I1 => data_trans_signal_d2,
      I2 => M_AXI_ARESETN,
      I3 => reads_done,
      I4 => M_AXI_ARREADY,
      I5 => \^axi_arvalid_reg_0\,
      O => \read_burst_counter[10]_i_1_n_0\
    );
\read_burst_counter[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFF7"
    )
        port map (
      I0 => read_burst_counter_reg(6),
      I1 => read_burst_counter_reg(3),
      I2 => \read_burst_counter[10]_i_4_n_0\,
      I3 => read_burst_counter_reg(10),
      I4 => \read_burst_counter[10]_i_5_n_0\,
      I5 => \read_burst_counter[10]_i_6_n_0\,
      O => read_burst_counter
    );
\read_burst_counter[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => read_burst_counter_reg(8),
      I1 => read_burst_counter_reg(6),
      I2 => \read_burst_counter[10]_i_7_n_0\,
      I3 => read_burst_counter_reg(7),
      I4 => read_burst_counter_reg(9),
      I5 => read_burst_counter_reg(10),
      O => \p_0_in__1\(10)
    );
\read_burst_counter[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => read_burst_counter_reg(0),
      I1 => read_burst_counter_reg(1),
      I2 => read_burst_counter_reg(2),
      O => \read_burst_counter[10]_i_4_n_0\
    );
\read_burst_counter[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => read_burst_counter_reg(9),
      I1 => read_burst_counter_reg(5),
      I2 => read_burst_counter_reg(7),
      I3 => read_burst_counter_reg(4),
      I4 => read_burst_counter_reg(8),
      O => \read_burst_counter[10]_i_5_n_0\
    );
\read_burst_counter[10]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => M_AXI_ARREADY,
      I1 => \^axi_arvalid_reg_0\,
      O => \read_burst_counter[10]_i_6_n_0\
    );
\read_burst_counter[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => read_burst_counter_reg(5),
      I1 => read_burst_counter_reg(2),
      I2 => read_burst_counter_reg(1),
      I3 => read_burst_counter_reg(0),
      I4 => read_burst_counter_reg(3),
      I5 => read_burst_counter_reg(4),
      O => \read_burst_counter[10]_i_7_n_0\
    );
\read_burst_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_burst_counter_reg(0),
      I1 => read_burst_counter_reg(1),
      O => \p_0_in__1\(1)
    );
\read_burst_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => read_burst_counter_reg(0),
      I1 => read_burst_counter_reg(1),
      I2 => read_burst_counter_reg(2),
      O => \p_0_in__1\(2)
    );
\read_burst_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => read_burst_counter_reg(2),
      I1 => read_burst_counter_reg(1),
      I2 => read_burst_counter_reg(0),
      I3 => read_burst_counter_reg(3),
      O => \read_burst_counter[3]_i_1_n_0\
    );
\read_burst_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => read_burst_counter_reg(3),
      I1 => read_burst_counter_reg(0),
      I2 => read_burst_counter_reg(1),
      I3 => read_burst_counter_reg(2),
      I4 => read_burst_counter_reg(4),
      O => \p_0_in__1\(4)
    );
\read_burst_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => read_burst_counter_reg(2),
      I1 => read_burst_counter_reg(1),
      I2 => read_burst_counter_reg(0),
      I3 => read_burst_counter_reg(3),
      I4 => read_burst_counter_reg(4),
      I5 => read_burst_counter_reg(5),
      O => \p_0_in__1\(5)
    );
\read_burst_counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => read_burst_counter_reg(4),
      I1 => read_burst_counter_reg(3),
      I2 => \read_burst_counter[10]_i_4_n_0\,
      I3 => read_burst_counter_reg(5),
      I4 => read_burst_counter_reg(6),
      O => \p_0_in__1\(6)
    );
\read_burst_counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF20000000"
    )
        port map (
      I0 => read_burst_counter_reg(5),
      I1 => \read_burst_counter[10]_i_4_n_0\,
      I2 => read_burst_counter_reg(3),
      I3 => read_burst_counter_reg(4),
      I4 => read_burst_counter_reg(6),
      I5 => read_burst_counter_reg(7),
      O => \p_0_in__1\(7)
    );
\read_burst_counter[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => read_burst_counter_reg(6),
      I1 => \read_burst_counter[10]_i_7_n_0\,
      I2 => read_burst_counter_reg(7),
      I3 => read_burst_counter_reg(8),
      O => \p_0_in__1\(8)
    );
\read_burst_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => read_burst_counter_reg(7),
      I1 => \read_burst_counter[10]_i_7_n_0\,
      I2 => read_burst_counter_reg(6),
      I3 => read_burst_counter_reg(8),
      I4 => read_burst_counter_reg(9),
      O => \p_0_in__1\(9)
    );
\read_burst_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \p_0_in__1\(0),
      Q => read_burst_counter_reg(0),
      R => \read_burst_counter[10]_i_1_n_0\
    );
\read_burst_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \p_0_in__1\(10),
      Q => read_burst_counter_reg(10),
      R => \read_burst_counter[10]_i_1_n_0\
    );
\read_burst_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \p_0_in__1\(1),
      Q => read_burst_counter_reg(1),
      R => \read_burst_counter[10]_i_1_n_0\
    );
\read_burst_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \p_0_in__1\(2),
      Q => read_burst_counter_reg(2),
      R => \read_burst_counter[10]_i_1_n_0\
    );
\read_burst_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \read_burst_counter[3]_i_1_n_0\,
      Q => read_burst_counter_reg(3),
      R => \read_burst_counter[10]_i_1_n_0\
    );
\read_burst_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \p_0_in__1\(4),
      Q => read_burst_counter_reg(4),
      R => \read_burst_counter[10]_i_1_n_0\
    );
\read_burst_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \p_0_in__1\(5),
      Q => read_burst_counter_reg(5),
      R => \read_burst_counter[10]_i_1_n_0\
    );
\read_burst_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \p_0_in__1\(6),
      Q => read_burst_counter_reg(6),
      R => \read_burst_counter[10]_i_1_n_0\
    );
\read_burst_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \p_0_in__1\(7),
      Q => read_burst_counter_reg(7),
      R => \read_burst_counter[10]_i_1_n_0\
    );
\read_burst_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \p_0_in__1\(8),
      Q => read_burst_counter_reg(8),
      R => \read_burst_counter[10]_i_1_n_0\
    );
\read_burst_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_burst_counter,
      D => \p_0_in__1\(9),
      Q => read_burst_counter_reg(9),
      R => \read_burst_counter[10]_i_1_n_0\
    );
\read_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_index_reg(0),
      O => \p_0_in__0\(0)
    );
\read_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_index_reg(0),
      I1 => read_index_reg(1),
      O => \p_0_in__0\(1)
    );
\read_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => read_index_reg(0),
      I1 => read_index_reg(1),
      I2 => read_index_reg(2),
      O => \p_0_in__0\(2)
    );
\read_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => read_index_reg(2),
      I1 => read_index_reg(1),
      I2 => read_index_reg(0),
      I3 => read_index_reg(3),
      O => \read_index[3]_i_1_n_0\
    );
\read_index[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => read_index_reg(3),
      I1 => read_index_reg(0),
      I2 => read_index_reg(1),
      I3 => read_index_reg(2),
      I4 => read_index_reg(4),
      O => \p_0_in__0\(4)
    );
\read_index[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => read_index_reg(2),
      I1 => read_index_reg(1),
      I2 => read_index_reg(0),
      I3 => read_index_reg(3),
      I4 => read_index_reg(4),
      I5 => read_index_reg(5),
      O => \p_0_in__0\(5)
    );
\read_index[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => read_index_reg(4),
      I1 => read_index_reg(3),
      I2 => \read_index[7]_i_5_n_0\,
      I3 => read_index_reg(5),
      I4 => read_index_reg(6),
      O => \p_0_in__0\(6)
    );
\read_index[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF2F"
    )
        port map (
      I0 => data_trans_signal_d1,
      I1 => data_trans_signal_d2,
      I2 => M_AXI_ARESETN,
      I3 => start_single_burst_read_reg_n_0,
      O => \read_index[7]_i_1_n_0\
    );
\read_index[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFF7F"
    )
        port map (
      I0 => read_index_reg(3),
      I1 => read_index_reg(5),
      I2 => read_index_reg(4),
      I3 => \read_index[7]_i_4_n_0\,
      I4 => \read_index[7]_i_5_n_0\,
      I5 => \read_index[7]_i_6_n_0\,
      O => read_index0
    );
\read_index[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => read_index_reg(4),
      I1 => read_index_reg(3),
      I2 => \read_index[7]_i_5_n_0\,
      I3 => read_index_reg(5),
      I4 => read_index_reg(6),
      I5 => read_index_reg(7),
      O => \p_0_in__0\(7)
    );
\read_index[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => read_index_reg(7),
      I1 => read_index_reg(6),
      O => \read_index[7]_i_4_n_0\
    );
\read_index[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => read_index_reg(0),
      I1 => read_index_reg(1),
      I2 => read_index_reg(2),
      O => \read_index[7]_i_5_n_0\
    );
\read_index[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => M_AXI_RVALID,
      I1 => \^axi_rready_reg_0\,
      O => \read_index[7]_i_6_n_0\
    );
\read_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_index0,
      D => \p_0_in__0\(0),
      Q => read_index_reg(0),
      R => \read_index[7]_i_1_n_0\
    );
\read_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_index0,
      D => \p_0_in__0\(1),
      Q => read_index_reg(1),
      R => \read_index[7]_i_1_n_0\
    );
\read_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_index0,
      D => \p_0_in__0\(2),
      Q => read_index_reg(2),
      R => \read_index[7]_i_1_n_0\
    );
\read_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_index0,
      D => \read_index[3]_i_1_n_0\,
      Q => read_index_reg(3),
      R => \read_index[7]_i_1_n_0\
    );
\read_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_index0,
      D => \p_0_in__0\(4),
      Q => read_index_reg(4),
      R => \read_index[7]_i_1_n_0\
    );
\read_index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_index0,
      D => \p_0_in__0\(5),
      Q => read_index_reg(5),
      R => \read_index[7]_i_1_n_0\
    );
\read_index_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_index0,
      D => \p_0_in__0\(6),
      Q => read_index_reg(6),
      R => \read_index[7]_i_1_n_0\
    );
\read_index_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => read_index0,
      D => \p_0_in__0\(7),
      Q => read_index_reg(7),
      R => \read_index[7]_i_1_n_0\
    );
reads_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => reads_done1,
      I1 => reads_done_i_3_n_0,
      I2 => read_index_reg(2),
      I3 => read_index_reg(1),
      I4 => read_index_reg(0),
      I5 => reads_done,
      O => reads_done_i_1_n_0
    );
reads_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => reads_done_i_4_n_0,
      I1 => read_burst_counter_reg(10),
      I2 => read_burst_counter_reg(9),
      I3 => read_burst_counter_reg(8),
      I4 => read_burst_counter_reg(7),
      I5 => \read_burst_counter[10]_i_4_n_0\,
      O => reads_done1
    );
reads_done_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \read_index[7]_i_6_n_0\,
      I1 => read_index_reg(7),
      I2 => read_index_reg(6),
      I3 => read_index_reg(3),
      I4 => read_index_reg(4),
      I5 => read_index_reg(5),
      O => reads_done_i_3_n_0
    );
reads_done_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => read_burst_counter_reg(4),
      I1 => read_burst_counter_reg(3),
      I2 => read_burst_counter_reg(6),
      I3 => read_burst_counter_reg(5),
      O => reads_done_i_4_n_0
    );
reads_done_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => reads_done_i_1_n_0,
      Q => reads_done,
      R => axi_awvalid0
    );
start_single_burst_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F0010"
    )
        port map (
      I0 => \^axi_arvalid_reg_0\,
      I1 => burst_read_active,
      I2 => \FSM_onehot_mst_exec_state_reg_n_0_[2]\,
      I3 => reads_done,
      I4 => start_single_burst_read_reg_n_0,
      O => start_single_burst_read_i_1_n_0
    );
start_single_burst_read_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => start_single_burst_read_i_1_n_0,
      Q => start_single_burst_read_reg_n_0,
      R => state_write_busy_i_1_n_0
    );
start_single_burst_write_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F0010"
    )
        port map (
      I0 => \^axi_awvalid_reg_0\,
      I1 => burst_write_active,
      I2 => \FSM_onehot_mst_exec_state_reg_n_0_[1]\,
      I3 => writes_done,
      I4 => start_single_burst_write_reg_n_0,
      O => start_single_burst_write_i_1_n_0
    );
start_single_burst_write_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => start_single_burst_write_i_1_n_0,
      Q => start_single_burst_write_reg_n_0,
      R => state_write_busy_i_1_n_0
    );
state_read_busy_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => mst_exec_state,
      D => \FSM_onehot_mst_exec_state_reg_n_0_[2]\,
      Q => state_read_busy,
      R => state_write_busy_i_1_n_0
    );
state_wait_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => mst_exec_state,
      D => \FSM_onehot_mst_exec_state_reg_n_0_[0]\,
      Q => state_wait,
      R => state_write_busy_i_1_n_0
    );
state_write_busy_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => M_AXI_ARESETN,
      O => state_write_busy_i_1_n_0
    );
state_write_busy_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_mst_exec_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_mst_exec_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_mst_exec_state_reg_n_0_[1]\,
      O => mst_exec_state
    );
state_write_busy_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => mst_exec_state,
      D => \FSM_onehot_mst_exec_state_reg_n_0_[1]\,
      Q => state_write_busy,
      R => state_write_busy_i_1_n_0
    );
\write_burst_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_burst_counter_reg(0),
      O => \write_burst_counter[0]_i_1_n_0\
    );
\write_burst_counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FFFFFFF2F2F2F2F"
    )
        port map (
      I0 => data_trans_signal_d1,
      I1 => data_trans_signal_d2,
      I2 => M_AXI_ARESETN,
      I3 => \^axi_awvalid_reg_0\,
      I4 => M_AXI_AWREADY,
      I5 => writes_done,
      O => \write_burst_counter[10]_i_1_n_0\
    );
\write_burst_counter[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88880888"
    )
        port map (
      I0 => M_AXI_AWREADY,
      I1 => \^axi_awvalid_reg_0\,
      I2 => write_burst_counter_reg(1),
      I3 => write_burst_counter_reg(0),
      I4 => write_done_flag_i_3_n_0,
      O => write_burst_counter
    );
\write_burst_counter[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => write_burst_counter_reg(8),
      I1 => write_burst_counter_reg(6),
      I2 => \write_burst_counter[10]_i_4_n_0\,
      I3 => write_burst_counter_reg(7),
      I4 => write_burst_counter_reg(9),
      I5 => write_burst_counter_reg(10),
      O => p_0_in(10)
    );
\write_burst_counter[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => write_burst_counter_reg(5),
      I1 => write_burst_counter_reg(3),
      I2 => write_burst_counter_reg(1),
      I3 => write_burst_counter_reg(0),
      I4 => write_burst_counter_reg(2),
      I5 => write_burst_counter_reg(4),
      O => \write_burst_counter[10]_i_4_n_0\
    );
\write_burst_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_burst_counter_reg(0),
      I1 => write_burst_counter_reg(1),
      O => p_0_in(1)
    );
\write_burst_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => write_burst_counter_reg(0),
      I1 => write_burst_counter_reg(1),
      I2 => write_burst_counter_reg(2),
      O => p_0_in(2)
    );
\write_burst_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => write_burst_counter_reg(1),
      I1 => write_burst_counter_reg(0),
      I2 => write_burst_counter_reg(2),
      I3 => write_burst_counter_reg(3),
      O => p_0_in(3)
    );
\write_burst_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => write_burst_counter_reg(2),
      I1 => write_burst_counter_reg(0),
      I2 => write_burst_counter_reg(1),
      I3 => write_burst_counter_reg(3),
      I4 => write_burst_counter_reg(4),
      O => p_0_in(4)
    );
\write_burst_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => write_burst_counter_reg(3),
      I1 => write_burst_counter_reg(1),
      I2 => write_burst_counter_reg(0),
      I3 => write_burst_counter_reg(2),
      I4 => write_burst_counter_reg(4),
      I5 => write_burst_counter_reg(5),
      O => p_0_in(5)
    );
\write_burst_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => write_burst_counter_reg(4),
      I1 => write_burst_counter_reg(2),
      I2 => \write_burst_counter[6]_i_2_n_0\,
      I3 => write_burst_counter_reg(3),
      I4 => write_burst_counter_reg(5),
      I5 => write_burst_counter_reg(6),
      O => p_0_in(6)
    );
\write_burst_counter[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => write_burst_counter_reg(1),
      I1 => write_burst_counter_reg(0),
      O => \write_burst_counter[6]_i_2_n_0\
    );
\write_burst_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \write_burst_counter[10]_i_4_n_0\,
      I1 => write_burst_counter_reg(6),
      I2 => write_burst_counter_reg(7),
      O => p_0_in(7)
    );
\write_burst_counter[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => write_burst_counter_reg(6),
      I1 => \write_burst_counter[10]_i_4_n_0\,
      I2 => write_burst_counter_reg(7),
      I3 => write_burst_counter_reg(8),
      O => p_0_in(8)
    );
\write_burst_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => write_burst_counter_reg(7),
      I1 => \write_burst_counter[10]_i_4_n_0\,
      I2 => write_burst_counter_reg(6),
      I3 => write_burst_counter_reg(8),
      I4 => write_burst_counter_reg(9),
      O => p_0_in(9)
    );
\write_burst_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_burst_counter,
      D => \write_burst_counter[0]_i_1_n_0\,
      Q => write_burst_counter_reg(0),
      R => \write_burst_counter[10]_i_1_n_0\
    );
\write_burst_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_burst_counter,
      D => p_0_in(10),
      Q => write_burst_counter_reg(10),
      R => \write_burst_counter[10]_i_1_n_0\
    );
\write_burst_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_burst_counter,
      D => p_0_in(1),
      Q => write_burst_counter_reg(1),
      R => \write_burst_counter[10]_i_1_n_0\
    );
\write_burst_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_burst_counter,
      D => p_0_in(2),
      Q => write_burst_counter_reg(2),
      R => \write_burst_counter[10]_i_1_n_0\
    );
\write_burst_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_burst_counter,
      D => p_0_in(3),
      Q => write_burst_counter_reg(3),
      R => \write_burst_counter[10]_i_1_n_0\
    );
\write_burst_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_burst_counter,
      D => p_0_in(4),
      Q => write_burst_counter_reg(4),
      R => \write_burst_counter[10]_i_1_n_0\
    );
\write_burst_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_burst_counter,
      D => p_0_in(5),
      Q => write_burst_counter_reg(5),
      R => \write_burst_counter[10]_i_1_n_0\
    );
\write_burst_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_burst_counter,
      D => p_0_in(6),
      Q => write_burst_counter_reg(6),
      R => \write_burst_counter[10]_i_1_n_0\
    );
\write_burst_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_burst_counter,
      D => p_0_in(7),
      Q => write_burst_counter_reg(7),
      R => \write_burst_counter[10]_i_1_n_0\
    );
\write_burst_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_burst_counter,
      D => p_0_in(8),
      Q => write_burst_counter_reg(8),
      R => \write_burst_counter[10]_i_1_n_0\
    );
\write_burst_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_burst_counter,
      D => p_0_in(9),
      Q => write_burst_counter_reg(9),
      R => \write_burst_counter[10]_i_1_n_0\
    );
write_done_flag_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => data_trans_signal_d1,
      I1 => data_trans_signal_d2,
      I2 => M_AXI_ARESETN,
      O => axi_awvalid0
    );
write_done_flag_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFF10001000"
    )
        port map (
      I0 => write_done_flag_i_3_n_0,
      I1 => write_burst_counter_reg(0),
      I2 => write_burst_counter_reg(1),
      I3 => axi_awvalid09_out,
      I4 => writes_done,
      I5 => \^write_done_flag\,
      O => write_done_flag_i_2_n_0
    );
write_done_flag_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => write_done_flag_i_4_n_0,
      I1 => write_burst_counter_reg(5),
      I2 => write_burst_counter_reg(4),
      I3 => write_burst_counter_reg(7),
      I4 => write_burst_counter_reg(6),
      O => write_done_flag_i_3_n_0
    );
write_done_flag_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBF"
    )
        port map (
      I0 => write_burst_counter_reg(10),
      I1 => write_burst_counter_reg(3),
      I2 => write_burst_counter_reg(2),
      I3 => write_burst_counter_reg(8),
      I4 => write_burst_counter_reg(9),
      O => write_done_flag_i_4_n_0
    );
write_done_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => write_done_flag_i_2_n_0,
      Q => \^write_done_flag\,
      R => axi_awvalid0
    );
\write_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_index_reg(0),
      O => \p_0_in__2\(0)
    );
\write_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_index_reg(0),
      I1 => write_index_reg(1),
      O => \p_0_in__2\(1)
    );
\write_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => write_index_reg(0),
      I1 => write_index_reg(1),
      I2 => write_index_reg(2),
      O => \p_0_in__2\(2)
    );
\write_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => write_index_reg(1),
      I1 => write_index_reg(0),
      I2 => write_index_reg(2),
      I3 => write_index_reg(3),
      O => \p_0_in__2\(3)
    );
\write_index[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => write_index_reg(3),
      I1 => write_index_reg(2),
      I2 => write_index_reg(0),
      I3 => write_index_reg(1),
      I4 => write_index_reg(4),
      O => \p_0_in__2\(4)
    );
\write_index[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => write_index_reg(1),
      I1 => write_index_reg(0),
      I2 => write_index_reg(2),
      I3 => write_index_reg(3),
      I4 => write_index_reg(4),
      I5 => write_index_reg(5),
      O => \p_0_in__2\(5)
    );
\write_index[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \write_index[7]_i_5_n_0\,
      I1 => write_index_reg(6),
      O => \p_0_in__2\(6)
    );
\write_index[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF2F"
    )
        port map (
      I0 => data_trans_signal_d1,
      I1 => data_trans_signal_d2,
      I2 => M_AXI_ARESETN,
      I3 => start_single_burst_write_reg_n_0,
      O => \write_index[7]_i_1_n_0\
    );
\write_index[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88880888"
    )
        port map (
      I0 => \^axi_wvalid_reg_0\,
      I1 => M_AXI_WREADY,
      I2 => write_index_reg(2),
      I3 => write_index_reg(3),
      I4 => \write_index[7]_i_4_n_0\,
      O => write_index0
    );
\write_index[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \write_index[7]_i_5_n_0\,
      I1 => write_index_reg(6),
      I2 => write_index_reg(7),
      O => \p_0_in__2\(7)
    );
\write_index[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => write_index_reg(1),
      I1 => write_index_reg(0),
      I2 => write_index_reg(7),
      I3 => write_index_reg(6),
      I4 => write_index_reg(5),
      I5 => write_index_reg(4),
      O => \write_index[7]_i_4_n_0\
    );
\write_index[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => write_index_reg(1),
      I1 => write_index_reg(0),
      I2 => write_index_reg(2),
      I3 => write_index_reg(3),
      I4 => write_index_reg(4),
      I5 => write_index_reg(5),
      O => \write_index[7]_i_5_n_0\
    );
\write_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_index0,
      D => \p_0_in__2\(0),
      Q => write_index_reg(0),
      R => \write_index[7]_i_1_n_0\
    );
\write_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_index0,
      D => \p_0_in__2\(1),
      Q => write_index_reg(1),
      R => \write_index[7]_i_1_n_0\
    );
\write_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_index0,
      D => \p_0_in__2\(2),
      Q => write_index_reg(2),
      R => \write_index[7]_i_1_n_0\
    );
\write_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_index0,
      D => \p_0_in__2\(3),
      Q => write_index_reg(3),
      R => \write_index[7]_i_1_n_0\
    );
\write_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_index0,
      D => \p_0_in__2\(4),
      Q => write_index_reg(4),
      R => \write_index[7]_i_1_n_0\
    );
\write_index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_index0,
      D => \p_0_in__2\(5),
      Q => write_index_reg(5),
      R => \write_index[7]_i_1_n_0\
    );
\write_index_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_index0,
      D => \p_0_in__2\(6),
      Q => write_index_reg(6),
      R => \write_index[7]_i_1_n_0\
    );
\write_index_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => write_index0,
      D => \p_0_in__2\(7),
      Q => write_index_reg(7),
      R => \write_index[7]_i_1_n_0\
    );
writes_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40000000"
    )
        port map (
      I0 => write_done_flag_i_3_n_0,
      I1 => \^m_axi_bready\,
      I2 => M_AXI_BVALID,
      I3 => write_burst_counter_reg(0),
      I4 => write_burst_counter_reg(1),
      I5 => writes_done,
      O => writes_done_i_1_n_0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => writes_done_i_1_n_0,
      Q => writes_done,
      R => axi_awvalid0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_master_axi_full_v1_0_0_0 is
  port (
    data_trans : in STD_LOGIC_VECTOR ( 127 downto 0 );
    data_trans_signal : in STD_LOGIC;
    data_ready_trans : out STD_LOGIC;
    state_write_busy : out STD_LOGIC;
    state_read_busy : out STD_LOGIC;
    state_wait : out STD_LOGIC;
    write_done_flag : out STD_LOGIC;
    TXN_DONE : out STD_LOGIC;
    ERROR : out STD_LOGIC;
    M_AXI_ACLK : in STD_LOGIC;
    M_AXI_ARESETN : in STD_LOGIC;
    M_AXI_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWLOCK : out STD_LOGIC;
    M_AXI_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_WLAST : out STD_LOGIC;
    M_AXI_WUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARLOCK : out STD_LOGIC;
    M_AXI_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RLAST : in STD_LOGIC;
    M_AXI_RUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_master_axi_full_v1_0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_master_axi_full_v1_0_0_0 : entity is "system_master_axi_full_v1_0_0_0,master_axi_full_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_master_axi_full_v1_0_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_master_axi_full_v1_0_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_master_axi_full_v1_0_0_0 : entity is "master_axi_full_v1_0,Vivado 2023.1";
end system_master_axi_full_v1_0_0_0;

architecture STRUCTURE of system_master_axi_full_v1_0_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 11 );
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 11 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of M_AXI_ACLK : signal is "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETN, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 M_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of M_AXI_ARESETN : signal is "XIL_INTERFACENAME M_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_ARLOCK : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  attribute X_INTERFACE_INFO of M_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of M_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of M_AXI_AWLOCK : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  attribute X_INTERFACE_INFO of M_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of M_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of M_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of M_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of M_AXI_RLAST : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute X_INTERFACE_INFO of M_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of M_AXI_RREADY : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of M_AXI_WLAST : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute X_INTERFACE_INFO of M_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of M_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of M_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of M_AXI_ARBURST : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute X_INTERFACE_INFO of M_AXI_ARCACHE : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  attribute X_INTERFACE_INFO of M_AXI_ARID : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARID";
  attribute X_INTERFACE_INFO of M_AXI_ARLEN : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute X_INTERFACE_INFO of M_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of M_AXI_ARQOS : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARQOS";
  attribute X_INTERFACE_INFO of M_AXI_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  attribute X_INTERFACE_INFO of M_AXI_ARUSER : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARUSER";
  attribute X_INTERFACE_INFO of M_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of M_AXI_AWBURST : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute X_INTERFACE_INFO of M_AXI_AWCACHE : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  attribute X_INTERFACE_INFO of M_AXI_AWID : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWID";
  attribute X_INTERFACE_INFO of M_AXI_AWLEN : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute X_INTERFACE_INFO of M_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of M_AXI_AWQOS : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  attribute X_INTERFACE_INFO of M_AXI_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute X_INTERFACE_INFO of M_AXI_AWUSER : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWUSER";
  attribute X_INTERFACE_INFO of M_AXI_BID : signal is "xilinx.com:interface:aximm:1.0 M_AXI BID";
  attribute X_INTERFACE_INFO of M_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of M_AXI_BUSER : signal is "xilinx.com:interface:aximm:1.0 M_AXI BUSER";
  attribute X_INTERFACE_INFO of M_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of M_AXI_RID : signal is "xilinx.com:interface:aximm:1.0 M_AXI RID";
  attribute X_INTERFACE_INFO of M_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of M_AXI_RUSER : signal is "xilinx.com:interface:aximm:1.0 M_AXI RUSER";
  attribute X_INTERFACE_INFO of M_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of M_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of M_AXI_WUSER : signal is "xilinx.com:interface:aximm:1.0 M_AXI WUSER";
begin
  ERROR <= \<const0>\;
  M_AXI_ARADDR(31 downto 11) <= \^m_axi_araddr\(31 downto 11);
  M_AXI_ARADDR(10) <= \<const0>\;
  M_AXI_ARADDR(9) <= \<const0>\;
  M_AXI_ARADDR(8) <= \<const0>\;
  M_AXI_ARADDR(7) <= \<const0>\;
  M_AXI_ARADDR(6) <= \<const0>\;
  M_AXI_ARADDR(5) <= \<const0>\;
  M_AXI_ARADDR(4) <= \<const0>\;
  M_AXI_ARADDR(3) <= \<const0>\;
  M_AXI_ARADDR(2) <= \<const0>\;
  M_AXI_ARADDR(1) <= \<const0>\;
  M_AXI_ARADDR(0) <= \<const0>\;
  M_AXI_ARBURST(1) <= \<const0>\;
  M_AXI_ARBURST(0) <= \<const1>\;
  M_AXI_ARCACHE(3) <= \<const0>\;
  M_AXI_ARCACHE(2) <= \<const0>\;
  M_AXI_ARCACHE(1) <= \<const1>\;
  M_AXI_ARCACHE(0) <= \<const0>\;
  M_AXI_ARID(0) <= \<const0>\;
  M_AXI_ARLEN(7) <= \<const0>\;
  M_AXI_ARLEN(6) <= \<const1>\;
  M_AXI_ARLEN(5) <= \<const1>\;
  M_AXI_ARLEN(4) <= \<const1>\;
  M_AXI_ARLEN(3) <= \<const1>\;
  M_AXI_ARLEN(2) <= \<const1>\;
  M_AXI_ARLEN(1) <= \<const1>\;
  M_AXI_ARLEN(0) <= \<const1>\;
  M_AXI_ARLOCK <= \<const0>\;
  M_AXI_ARPROT(2) <= \<const0>\;
  M_AXI_ARPROT(1) <= \<const0>\;
  M_AXI_ARPROT(0) <= \<const0>\;
  M_AXI_ARQOS(3) <= \<const0>\;
  M_AXI_ARQOS(2) <= \<const0>\;
  M_AXI_ARQOS(1) <= \<const0>\;
  M_AXI_ARQOS(0) <= \<const0>\;
  M_AXI_ARSIZE(2) <= \<const1>\;
  M_AXI_ARSIZE(1) <= \<const0>\;
  M_AXI_ARSIZE(0) <= \<const0>\;
  M_AXI_ARUSER(0) <= \<const1>\;
  M_AXI_AWADDR(31 downto 11) <= \^m_axi_awaddr\(31 downto 11);
  M_AXI_AWADDR(10) <= \<const0>\;
  M_AXI_AWADDR(9) <= \<const0>\;
  M_AXI_AWADDR(8) <= \<const0>\;
  M_AXI_AWADDR(7) <= \<const0>\;
  M_AXI_AWADDR(6) <= \<const0>\;
  M_AXI_AWADDR(5) <= \<const0>\;
  M_AXI_AWADDR(4) <= \<const0>\;
  M_AXI_AWADDR(3) <= \<const0>\;
  M_AXI_AWADDR(2) <= \<const0>\;
  M_AXI_AWADDR(1) <= \<const0>\;
  M_AXI_AWADDR(0) <= \<const0>\;
  M_AXI_AWBURST(1) <= \<const0>\;
  M_AXI_AWBURST(0) <= \<const1>\;
  M_AXI_AWCACHE(3) <= \<const0>\;
  M_AXI_AWCACHE(2) <= \<const0>\;
  M_AXI_AWCACHE(1) <= \<const1>\;
  M_AXI_AWCACHE(0) <= \<const0>\;
  M_AXI_AWID(0) <= \<const0>\;
  M_AXI_AWLEN(7) <= \<const0>\;
  M_AXI_AWLEN(6) <= \<const1>\;
  M_AXI_AWLEN(5) <= \<const1>\;
  M_AXI_AWLEN(4) <= \<const1>\;
  M_AXI_AWLEN(3) <= \<const1>\;
  M_AXI_AWLEN(2) <= \<const1>\;
  M_AXI_AWLEN(1) <= \<const1>\;
  M_AXI_AWLEN(0) <= \<const1>\;
  M_AXI_AWLOCK <= \<const0>\;
  M_AXI_AWPROT(2) <= \<const0>\;
  M_AXI_AWPROT(1) <= \<const0>\;
  M_AXI_AWPROT(0) <= \<const0>\;
  M_AXI_AWQOS(3) <= \<const0>\;
  M_AXI_AWQOS(2) <= \<const0>\;
  M_AXI_AWQOS(1) <= \<const0>\;
  M_AXI_AWQOS(0) <= \<const0>\;
  M_AXI_AWSIZE(2) <= \<const1>\;
  M_AXI_AWSIZE(1) <= \<const0>\;
  M_AXI_AWSIZE(0) <= \<const0>\;
  M_AXI_AWUSER(0) <= \<const1>\;
  M_AXI_WSTRB(15) <= \<const1>\;
  M_AXI_WSTRB(14) <= \<const1>\;
  M_AXI_WSTRB(13) <= \<const1>\;
  M_AXI_WSTRB(12) <= \<const1>\;
  M_AXI_WSTRB(11) <= \<const1>\;
  M_AXI_WSTRB(10) <= \<const1>\;
  M_AXI_WSTRB(9) <= \<const1>\;
  M_AXI_WSTRB(8) <= \<const1>\;
  M_AXI_WSTRB(7) <= \<const1>\;
  M_AXI_WSTRB(6) <= \<const1>\;
  M_AXI_WSTRB(5) <= \<const1>\;
  M_AXI_WSTRB(4) <= \<const1>\;
  M_AXI_WSTRB(3) <= \<const1>\;
  M_AXI_WSTRB(2) <= \<const1>\;
  M_AXI_WSTRB(1) <= \<const1>\;
  M_AXI_WSTRB(0) <= \<const1>\;
  M_AXI_WUSER(0) <= \<const0>\;
  TXN_DONE <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.system_master_axi_full_v1_0_0_0_master_axi_full_v1_0
     port map (
      M_AXI_ACLK => M_AXI_ACLK,
      M_AXI_ARADDR(20 downto 0) => \^m_axi_araddr\(31 downto 11),
      M_AXI_ARESETN => M_AXI_ARESETN,
      M_AXI_ARREADY => M_AXI_ARREADY,
      M_AXI_AWADDR(20 downto 0) => \^m_axi_awaddr\(31 downto 11),
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_BREADY => M_AXI_BREADY,
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_RLAST => M_AXI_RLAST,
      M_AXI_RVALID => M_AXI_RVALID,
      M_AXI_WDATA(127 downto 0) => M_AXI_WDATA(127 downto 0),
      M_AXI_WREADY => M_AXI_WREADY,
      axi_arvalid_reg_0 => M_AXI_ARVALID,
      axi_awvalid_reg_0 => M_AXI_AWVALID,
      axi_rready_reg_0 => M_AXI_RREADY,
      axi_wlast_reg_0 => M_AXI_WLAST,
      axi_wvalid_reg_0 => M_AXI_WVALID,
      data_ready_trans => data_ready_trans,
      data_trans(127 downto 0) => data_trans(127 downto 0),
      data_trans_signal => data_trans_signal,
      state_read_busy => state_read_busy,
      state_wait => state_wait,
      state_write_busy => state_write_busy,
      write_done_flag => write_done_flag
    );
end STRUCTURE;
