clear
clc

% Units are mA

% 3.3V 
MCU = 100;
cTouch = 10;        % Not sure 
flash = 25;
buffers = 100;      % This may actually be wrong - additional 100 not needed on top of flash
buttons = 1;

current_3V3 = MCU + cTouch + flash + buffers + buttons;

%5V
amp = 650;
LEDs = 200;

current_tot = current_3V3 + amp + LEDs


