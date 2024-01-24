library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Vhdl1 is
    Port ( sensor : in STD_LOGIC;      -- Salida del sensor 
           alarma_out : out STD_LOGIC); -- Salida de la alarma
end Vhdl1;

architecture Behavioral of Vhdl1 is
    signal alarma_activada : STD_LOGIC := '0';  -- Estado interno de la alarma

begin
    process(sensor)
    begin
        if sensor = '1' then
            alarma_activada <= '1';  -- Activar la alarma si se detecta movimiento
        end if;

        -- La alarma permanece activada incluso si el sensor deja de detectar movimiento
        alarma_out <= alarma_activada;
    end process;
end Behavioral;