-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Mar 18 00:01:22 2025
-- Host        : popeye running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Administrator/Desktop/AXI_Full_2_DDR_ETH_20250317_tzh_sim/soc.gen/sources_1/bd/system/ip/system_extern_trig_0_0/system_extern_trig_0_0_sim_netlist.vhdl
-- Design      : system_extern_trig_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_extern_trig_0_0_extern_trig is
  port (
    fifo_rst : out STD_LOGIC;
    signal_out : out STD_LOGIC;
    signal_enable : out STD_LOGIC;
    signal_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    ps_signal_in : in STD_LOGIC;
    axi_done_flag : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_extern_trig_0_0_extern_trig : entity is "extern_trig";
end system_extern_trig_0_0_extern_trig;

architecture STRUCTURE of system_extern_trig_0_0_extern_trig is
  signal first_rst : STD_LOGIC;
  signal first_rst_d1 : STD_LOGIC;
  signal first_rst_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \^signal_enable\ : STD_LOGIC;
  signal signal_enable_i_1_n_0 : STD_LOGIC;
  signal signal_in_d1 : STD_LOGIC;
  signal \^signal_out\ : STD_LOGIC;
  signal signal_out_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of first_rst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of signal_out_i_1 : label is "soft_lutpair0";
begin
  signal_enable <= \^signal_enable\;
  signal_out <= \^signal_out\;
fifo_rst_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => first_rst,
      I1 => first_rst_d1,
      O => fifo_rst
    );
first_rst_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => first_rst,
      Q => first_rst_d1
    );
first_rst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F040"
    )
        port map (
      I0 => signal_in_d1,
      I1 => signal_in,
      I2 => ps_signal_in,
      I3 => first_rst,
      O => first_rst_i_1_n_0
    );
first_rst_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => first_rst_i_1_n_0,
      Q => first_rst
    );
signal_enable_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2020"
    )
        port map (
      I0 => signal_in,
      I1 => signal_in_d1,
      I2 => ps_signal_in,
      I3 => axi_done_flag,
      I4 => \^signal_enable\,
      O => signal_enable_i_1_n_0
    );
signal_enable_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => signal_enable_i_1_n_0,
      Q => \^signal_enable\
    );
signal_in_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => signal_in,
      Q => signal_in_d1
    );
signal_out_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F040"
    )
        port map (
      I0 => signal_in_d1,
      I1 => ps_signal_in,
      I2 => signal_in,
      I3 => \^signal_out\,
      O => signal_out_i_1_n_0
    );
signal_out_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => p_0_in
    );
signal_out_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => signal_out_i_1_n_0,
      Q => \^signal_out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_extern_trig_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    signal_in : in STD_LOGIC;
    ps_signal_in : in STD_LOGIC;
    axi_done_flag : in STD_LOGIC;
    signal_out : out STD_LOGIC;
    signal_enable : out STD_LOGIC;
    fifo_rst : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_extern_trig_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_extern_trig_0_0 : entity is "system_extern_trig_0_0,extern_trig,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_extern_trig_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_extern_trig_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_extern_trig_0_0 : entity is "extern_trig,Vivado 2023.1";
end system_extern_trig_0_0;

architecture STRUCTURE of system_extern_trig_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of fifo_rst : signal is "xilinx.com:signal:reset:1.0 fifo_rst RST";
  attribute X_INTERFACE_PARAMETER of fifo_rst : signal is "XIL_INTERFACENAME fifo_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.system_extern_trig_0_0_extern_trig
     port map (
      axi_done_flag => axi_done_flag,
      clk => clk,
      fifo_rst => fifo_rst,
      ps_signal_in => ps_signal_in,
      rst_n => rst_n,
      signal_enable => signal_enable,
      signal_in => signal_in,
      signal_out => signal_out
    );
end STRUCTURE;
