-- tx side fsm, pulls data from one of rx fsms in a router and sends to spw codec
-- fsm:
-- 1. get new mux contol
-- 2. connect defined data source to daa sink
-- 3. cut the connection right after EOP or EEP was transmitted
-- 4. goto 1
--
-- dont forget to handle exceptions in all states

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.config.all;


entity spw_router_tx_fsm is
    port (
        iClk: in std_logic;
        iReset: in std_logic;

        -- mux control
        iMux_en: in std_logic;
        iMux_onehot: in std_logic_vector (cPort_num-1 downto 0); -- len = port num (pn)

        -- to data source
        iValid: in std_logic_vector (cPort_num-1 downto 0); -- len = pn
        iData: in std_logic_vector (cPort_num*9-1 downto 0); -- len = pn*9
        oAck: out std_logic_vector (cPort_num-1 downto 0); -- len = pn

        -- to data sink
        oValid: out std_logic;
        oData: out std_logic_vector (8 downto 0);
        iAck: in std_logic
    );
end entity;

architecture v1 of spw_router_tx_fsm is
begin
end v1;
