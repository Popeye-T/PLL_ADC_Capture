-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Feb 18 15:04:46 2025
-- Host        : DESKTOP-GKLJKUN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top system_util_vector_logic_6_0 -prefix
--               system_util_vector_logic_6_0_ system_util_vector_logic_0_1_sim_netlist.vhdl
-- Design      : system_util_vector_logic_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_util_vector_logic_6_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_util_vector_logic_6_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_util_vector_logic_6_0 : entity is "system_util_vector_logic_0_1,util_vector_logic_v2_0_2_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_util_vector_logic_6_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_util_vector_logic_6_0 : entity is "util_vector_logic_v2_0_2_util_vector_logic,Vivado 2023.1";
end system_util_vector_logic_6_0;

architecture STRUCTURE of system_util_vector_logic_6_0 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(0),
      I1 => Op2(0),
      O => Res(0)
    );
end STRUCTURE;
