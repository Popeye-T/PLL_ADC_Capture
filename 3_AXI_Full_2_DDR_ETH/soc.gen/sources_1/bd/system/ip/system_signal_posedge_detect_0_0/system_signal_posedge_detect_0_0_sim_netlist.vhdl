-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Dec 23 21:02:43 2024
-- Host        : DESKTOP-K54KI5V running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/workspace/ADC_Cap/3_AXI_Full_2_DDR_ETH/soc.gen/sources_1/bd/system/ip/system_signal_posedge_detect_0_0/system_signal_posedge_detect_0_0_sim_netlist.vhdl
-- Design      : system_signal_posedge_detect_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_signal_posedge_detect_0_0_signal_posedge_detect is
  port (
    posedge_out : out STD_LOGIC;
    enable_signal : out STD_LOGIC;
    posedge_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    signal_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_signal_posedge_detect_0_0_signal_posedge_detect : entity is "signal_posedge_detect";
end system_signal_posedge_detect_0_0_signal_posedge_detect;

architecture STRUCTURE of system_signal_posedge_detect_0_0_signal_posedge_detect is
  signal count0 : STD_LOGIC;
  signal count10_out : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_1_n_0\ : STD_LOGIC;
  signal \count[5]_i_1_n_0\ : STD_LOGIC;
  signal \count[5]_i_2_n_0\ : STD_LOGIC;
  signal \count[6]_i_1_n_0\ : STD_LOGIC;
  signal \count[7]_i_1_n_0\ : STD_LOGIC;
  signal \count[8]_i_1_n_0\ : STD_LOGIC;
  signal \count[9]_i_1_n_0\ : STD_LOGIC;
  signal \count[9]_i_2_n_0\ : STD_LOGIC;
  signal \count[9]_i_3_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 9 downto 3 );
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal enable_signal_i_2_n_0 : STD_LOGIC;
  signal enable_signal_i_3_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^posedge_count\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \posedge_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \^posedge_out\ : STD_LOGIC;
  signal posedge_out0 : STD_LOGIC;
  signal signal_in_d1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of enable_signal_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \posedge_count[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \posedge_count[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \posedge_count[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \posedge_count[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \posedge_count[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \posedge_count[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \posedge_count[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \posedge_count[9]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of posedge_out_i_1 : label is "soft_lutpair4";
begin
  posedge_count(9 downto 0) <= \^posedge_count\(9 downto 0);
  posedge_out <= \^posedge_out\;
\count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \^posedge_out\,
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \^posedge_out\,
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \^posedge_out\,
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \^posedge_out\,
      O => \count[3]_i_1_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(3),
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[0]\,
      I4 => \count_reg_n_0_[2]\,
      I5 => count10_out,
      O => \count[4]_i_1_n_0\
    );
\count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => count_reg(5),
      I1 => \count[5]_i_2_n_0\,
      I2 => \^posedge_out\,
      O => \count[5]_i_1_n_0\
    );
\count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => count_reg(4),
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => count_reg(3),
      O => \count[5]_i_2_n_0\
    );
\count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => count_reg(6),
      I1 => \count[9]_i_3_n_0\,
      I2 => \^posedge_out\,
      O => \count[6]_i_1_n_0\
    );
\count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => count_reg(7),
      I1 => count_reg(6),
      I2 => \count[9]_i_3_n_0\,
      I3 => \^posedge_out\,
      O => \count[7]_i_1_n_0\
    );
\count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => count_reg(8),
      I1 => count_reg(7),
      I2 => \count[9]_i_3_n_0\,
      I3 => count_reg(6),
      I4 => \^posedge_out\,
      O => \count[8]_i_1_n_0\
    );
\count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFF0000"
    )
        port map (
      I0 => \^posedge_out\,
      I1 => count_reg(3),
      I2 => count_reg(4),
      I3 => enable_signal_i_3_n_0,
      I4 => signal_in,
      O => \count[9]_i_1_n_0\
    );
\count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => count_reg(9),
      I1 => count_reg(8),
      I2 => count_reg(6),
      I3 => \count[9]_i_3_n_0\,
      I4 => count_reg(7),
      I5 => count10_out,
      O => \count[9]_i_2_n_0\
    );
\count[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => count_reg(5),
      I1 => count_reg(3),
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[0]\,
      I4 => \count_reg_n_0_[2]\,
      I5 => count_reg(4),
      O => \count[9]_i_3_n_0\
    );
\count[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => signal_in,
      I1 => \^posedge_out\,
      O => count10_out
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[9]_i_1_n_0\,
      CLR => enable_signal_i_2_n_0,
      D => \count[0]_i_1_n_0\,
      Q => \count_reg_n_0_[0]\
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[9]_i_1_n_0\,
      CLR => enable_signal_i_2_n_0,
      D => \count[1]_i_1_n_0\,
      Q => \count_reg_n_0_[1]\
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[9]_i_1_n_0\,
      CLR => enable_signal_i_2_n_0,
      D => \count[2]_i_1_n_0\,
      Q => \count_reg_n_0_[2]\
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[9]_i_1_n_0\,
      CLR => enable_signal_i_2_n_0,
      D => \count[3]_i_1_n_0\,
      Q => count_reg(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[9]_i_1_n_0\,
      CLR => enable_signal_i_2_n_0,
      D => \count[4]_i_1_n_0\,
      Q => count_reg(4)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[9]_i_1_n_0\,
      CLR => enable_signal_i_2_n_0,
      D => \count[5]_i_1_n_0\,
      Q => count_reg(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[9]_i_1_n_0\,
      CLR => enable_signal_i_2_n_0,
      D => \count[6]_i_1_n_0\,
      Q => count_reg(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[9]_i_1_n_0\,
      CLR => enable_signal_i_2_n_0,
      D => \count[7]_i_1_n_0\,
      Q => count_reg(7)
    );
\count_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[9]_i_1_n_0\,
      CLR => enable_signal_i_2_n_0,
      D => \count[8]_i_1_n_0\,
      Q => count_reg(8)
    );
\count_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count[9]_i_1_n_0\,
      CLR => enable_signal_i_2_n_0,
      D => \count[9]_i_2_n_0\,
      Q => count_reg(9)
    );
enable_signal_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"222A"
    )
        port map (
      I0 => signal_in,
      I1 => enable_signal_i_3_n_0,
      I2 => count_reg(4),
      I3 => count_reg(3),
      O => count0
    );
enable_signal_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => enable_signal_i_2_n_0
    );
enable_signal_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => count_reg(5),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => count_reg(6),
      I4 => count_reg(7),
      O => enable_signal_i_3_n_0
    );
enable_signal_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => enable_signal_i_2_n_0,
      D => count0,
      Q => enable_signal
    );
\posedge_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^posedge_count\(0),
      O => p_0_in(0)
    );
\posedge_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^posedge_count\(0),
      I1 => \^posedge_count\(1),
      O => p_0_in(1)
    );
\posedge_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^posedge_count\(0),
      I1 => \^posedge_count\(1),
      I2 => \^posedge_count\(2),
      O => p_0_in(2)
    );
\posedge_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^posedge_count\(1),
      I1 => \^posedge_count\(0),
      I2 => \^posedge_count\(2),
      I3 => \^posedge_count\(3),
      O => p_0_in(3)
    );
\posedge_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^posedge_count\(2),
      I1 => \^posedge_count\(0),
      I2 => \^posedge_count\(1),
      I3 => \^posedge_count\(3),
      I4 => \^posedge_count\(4),
      O => p_0_in(4)
    );
\posedge_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^posedge_count\(3),
      I1 => \^posedge_count\(1),
      I2 => \^posedge_count\(0),
      I3 => \^posedge_count\(2),
      I4 => \^posedge_count\(4),
      I5 => \^posedge_count\(5),
      O => p_0_in(5)
    );
\posedge_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \posedge_count[9]_i_2_n_0\,
      I1 => \^posedge_count\(6),
      O => p_0_in(6)
    );
\posedge_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \posedge_count[9]_i_2_n_0\,
      I1 => \^posedge_count\(6),
      I2 => \^posedge_count\(7),
      O => p_0_in(7)
    );
\posedge_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^posedge_count\(6),
      I1 => \posedge_count[9]_i_2_n_0\,
      I2 => \^posedge_count\(7),
      I3 => \^posedge_count\(8),
      O => p_0_in(8)
    );
\posedge_count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^posedge_count\(7),
      I1 => \posedge_count[9]_i_2_n_0\,
      I2 => \^posedge_count\(6),
      I3 => \^posedge_count\(8),
      I4 => \^posedge_count\(9),
      O => p_0_in(9)
    );
\posedge_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^posedge_count\(5),
      I1 => \^posedge_count\(3),
      I2 => \^posedge_count\(1),
      I3 => \^posedge_count\(0),
      I4 => \^posedge_count\(2),
      I5 => \^posedge_count\(4),
      O => \posedge_count[9]_i_2_n_0\
    );
\posedge_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^posedge_out\,
      CLR => enable_signal_i_2_n_0,
      D => p_0_in(0),
      Q => \^posedge_count\(0)
    );
\posedge_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^posedge_out\,
      CLR => enable_signal_i_2_n_0,
      D => p_0_in(1),
      Q => \^posedge_count\(1)
    );
\posedge_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^posedge_out\,
      CLR => enable_signal_i_2_n_0,
      D => p_0_in(2),
      Q => \^posedge_count\(2)
    );
\posedge_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^posedge_out\,
      CLR => enable_signal_i_2_n_0,
      D => p_0_in(3),
      Q => \^posedge_count\(3)
    );
\posedge_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^posedge_out\,
      CLR => enable_signal_i_2_n_0,
      D => p_0_in(4),
      Q => \^posedge_count\(4)
    );
\posedge_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^posedge_out\,
      CLR => enable_signal_i_2_n_0,
      D => p_0_in(5),
      Q => \^posedge_count\(5)
    );
\posedge_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^posedge_out\,
      CLR => enable_signal_i_2_n_0,
      D => p_0_in(6),
      Q => \^posedge_count\(6)
    );
\posedge_count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^posedge_out\,
      CLR => enable_signal_i_2_n_0,
      D => p_0_in(7),
      Q => \^posedge_count\(7)
    );
\posedge_count_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^posedge_out\,
      CLR => enable_signal_i_2_n_0,
      D => p_0_in(8),
      Q => \^posedge_count\(8)
    );
\posedge_count_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \^posedge_out\,
      CLR => enable_signal_i_2_n_0,
      D => p_0_in(9),
      Q => \^posedge_count\(9)
    );
posedge_out_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_in,
      I1 => signal_in_d1,
      O => posedge_out0
    );
posedge_out_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => enable_signal_i_2_n_0,
      D => posedge_out0,
      Q => \^posedge_out\
    );
signal_in_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => enable_signal_i_2_n_0,
      D => signal_in,
      Q => signal_in_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_signal_posedge_detect_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    signal_in : in STD_LOGIC;
    enable_signal : out STD_LOGIC;
    posedge_out : out STD_LOGIC;
    posedge_count : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_signal_posedge_detect_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_signal_posedge_detect_0_0 : entity is "system_signal_posedge_detect_0_0,signal_posedge_detect,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_signal_posedge_detect_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_signal_posedge_detect_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_signal_posedge_detect_0_0 : entity is "signal_posedge_detect,Vivado 2023.1";
end system_signal_posedge_detect_0_0;

architecture STRUCTURE of system_signal_posedge_detect_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 5e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.system_signal_posedge_detect_0_0_signal_posedge_detect
     port map (
      clk => clk,
      enable_signal => enable_signal,
      posedge_count(9 downto 0) => posedge_count(9 downto 0),
      posedge_out => posedge_out,
      rst_n => rst_n,
      signal_in => signal_in
    );
end STRUCTURE;
